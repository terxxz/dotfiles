return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'saghen/blink.cmp',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
  },
  config = function()
    local mason = require('mason')
    local mason_lspconfig = require('mason-lspconfig')
    local mason_tool_installer = require('mason-tool-installer')
    local lspconfig = require('lspconfig')
    local capabilities = require('blink.cmp').get_lsp_capabilities()

    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('user-lsp-attach', {}),
      callback = function()
        vim.keymap.set('n', 'gn', vim.diagnostic.goto_next, { buffer = 0 })
        vim.keymap.set('n', 'gp', vim.diagnostic.goto_prev, { buffer = 0 })

        vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = 0 })
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = 0 })
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { buffer = 0 })
        vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, { buffer = 0 })
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = 0 })

        vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, { buffer = 0 })
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { buffer = 0 })
        vim.keymap.set('n', '<leader>vd', vim.diagnostic.open_float, { buffer = 0 })
      end,
    })

    mason.setup({
      ui = {
        icons = {
          package_installed = '✓',
          package_pending = '➜',
          package_uninstalled = '✗',
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        'lua_ls',
        'ts_ls',
        'gopls',
        'html',
        'emmet_ls',
        'cssls',
      },
      handlers = {
        function(server_name)
          lspconfig[server_name].setup({
            capabilities = capabilities,
          })
        end,
        ['lua_ls'] = function()
          lspconfig.lua_ls.setup({
            capabilities = capabilities,
            settings = {
              Lua = {
                diagnostics = {
                  globals = { 'vim' },
                },
              },
            },
          })
        end,
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        'stylua',
        'prettier',
        'goimports',
        'golines',
      },
    })

    vim.diagnostic.config({
      severity_sort = true,
    })
  end,
}

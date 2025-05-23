return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'saghen/blink.cmp',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    {
      'folke/lazydev.nvim',
      ft = 'lua',
      opts = {
        library = {
          { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
        },
      },
    },
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
        vim.keymap.set('n', 'gn', function()
          vim.diagnostic.jump({ count = 1, float = true })
        end, { buffer = 0 })
        vim.keymap.set('n', 'gp', function()
          vim.diagnostic.jump({ count = -1, float = true })
        end, { buffer = 0 })

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
        'gopls',
        'ts_ls',
        'html',
        'emmet_ls',
      },
      handlers = {
        function(server_name)
          lspconfig[server_name].setup({
            capabilities = capabilities,
          })
        end,
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        'stylua',
        'goimports',
        'gofumpt',
        'prettier',
      },
    })

    vim.diagnostic.config({
      virtual_text = true,
      severity_sort = true,
      float = {
        border = 'rounded',
      },
    })
  end,
}

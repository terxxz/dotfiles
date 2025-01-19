return {
  'stevearc/conform.nvim',
  config = function()
    local conform = require('conform')

    conform.setup({
      formatters_by_ft = {
        lua = { 'stylua' },
        go = { 'goimports', 'gofumpt' },
        json = { 'prettier' },
      },
      format_on_save = {
        lsp_format = 'fallback',
        timeout_ms = 500,
        quiet = true,
      },
    })
  end,
}

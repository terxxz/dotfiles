return {
  'vague2k/vague.nvim',
  priority = 1000,
  config = function()
    require('vague').setup({
      style = {
        boolean = 'none',
        headings = 'none',
        strings = 'none',
        keyword_return = 'none',
        builtin_constants = 'none',
        builtin_types = 'none',
      },
      plugins = {
        lsp = {
          diagnostic_error = 'bold',
          diagnostic_warn = 'bold',
          diagnostic_info = 'bold',
          diagnostic_hint = 'bold',
          diagnostic_ok = 'bold',
        },
      },
      on_highlights = function(highlights, _)
        highlights.StatusLine = { bg = '' }
        highlights.NormalFloat = { bg = '#090909' }
        highlights.BlinkCmpMenu = { bg = '#090909' }
      end,
    })

    vim.cmd.colorscheme('vague')
  end,
}

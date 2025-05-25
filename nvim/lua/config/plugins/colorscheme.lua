return {
  'vague2k/vague.nvim',
  config = function()
    require('vague').setup({
      style = {
        boolean = 'none',
        number = 'none',
        float = 'none',
        error = 'none',
        comments = 'none',
        conditionals = 'none',
        functions = 'none',
        headings = 'none',
        operators = 'none',
        strings = 'none',
        variables = 'none',

        keywords = 'none',
        keyword_return = 'none',
        keywords_loop = 'none',
        keywords_label = 'none',
        keywords_exception = 'none',

        builtin_constants = 'none',
        builtin_functions = 'none',
        builtin_types = 'none',
        builtin_variables = 'none',
      },

      plugins = {
        lsp = {
          diagnostic_error = 'bold',
          diagnostic_hint = 'bold',
          diagnostic_info = 'bold',
          diagnostic_warn = 'bold',
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

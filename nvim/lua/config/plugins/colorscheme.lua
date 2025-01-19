return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('tokyonight').setup({
      style = 'night',
      styles = {
        keywords = { italic = false },
      },
      on_highlights = function(highlights, _)
        highlights.DiagnosticVirtualTextError = {
          bg = nil,
          fg = '#db4b4b',
        }
        highlights.DiagnosticVirtualTextHint = {
          bg = nil,
          fg = '#1abc9c',
        }
        highlights.DiagnosticVirtualTextInfo = {
          bg = nil,
          fg = '#0db9d7',
        }
        highlights.DiagnosticVirtualTextWarn = {
          bg = nil,
          fg = '#e0af68',
        }
      end,
    })
    vim.cmd.colorscheme('tokyonight')
  end,
}

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
    })
    vim.cmd.colorscheme('tokyonight')
  end,
}

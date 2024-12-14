return {
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup({
        style = 'night',
        styles = {
          keywords = { italic = false },
        },
      })
      vim.cmd.colorscheme('tokyonight')
    end,
  },
  {
    'rockyzhang24/arctic.nvim',
    branch = 'v2',
    dependencies = { 'rktjmp/lush.nvim' },
  },
}

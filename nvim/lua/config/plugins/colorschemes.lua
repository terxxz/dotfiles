return {
  {
    'ellisonleao/gruvbox.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('gruvbox').setup({
        underline = true,
        undercurl = false,
        bold = false,
        italic = { strings = false },
        contrast = 'hard',
      })
      vim.cmd.colorscheme('gruvbox')
      vim.keymap.set('n', '<leader>sg', ':colorscheme gruvbox<CR>')
    end,
  },
  {
    'folke/tokyonight.nvim',
    config = function()
      require('tokyonight').setup({
        style = 'night',
        styles = {
          keywords = { italic = false },
        },
      })
      vim.keymap.set('n', '<leader>st', ':colorscheme tokyonight<CR>')
    end,
  },
}

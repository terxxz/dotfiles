return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup({
      vim.keymap.set('n', '-', ':Oil<CR>'),
      vim.keymap.set('n', '<leader>-', ':Oil --float<CR>'),
    })
  end,
}

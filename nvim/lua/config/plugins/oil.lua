return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup({
      keymaps = {
        ['<C-h>'] = false,
      },
      view_options = { show_hidden = true },
    })

    vim.keymap.set('n', '-', ':Oil<CR>')
    vim.keymap.set('n', '<leader>-', ':Oil --float<CR>')
  end,
}

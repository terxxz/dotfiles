return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup({
      keymaps = {
        ['<C-h>'] = false,
        ['<C-p>'] = false,
      },
      view_options = {
        show_hidden = true,
      },
    })

    vim.keymap.set('n', '-', ':Oil<CR>')
  end,
}

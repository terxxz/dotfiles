return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  config = function()
    local harpoon = require('harpoon')
    harpoon:setup()

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end)

    vim.keymap.set('n', '<leader>e', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    for _, index in ipairs({ 1, 2, 3, 4, 5 }) do
      vim.keymap.set('n', string.format('<leader>%d', index), function()
        harpoon:list():select(index)
      end)
    end
  end,
}

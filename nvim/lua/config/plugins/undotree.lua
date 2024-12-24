return {
  'mbbill/undotree',
  config = function()
    vim.g.undotree_DiffCommand = 'FC'
    vim.g.undotree_WindowLayout = 2
    vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
  end,
}

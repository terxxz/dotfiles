vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight-yank', {}),
  callback = function()
    vim.highlight.on_yank({
      timeout = 120,
    })
  end,
})

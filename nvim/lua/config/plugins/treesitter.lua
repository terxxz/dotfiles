return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = { 'c', 'vim', 'vimdoc', 'query', 'markdown', 'markdown_inline' },
      auto_install = true,
      highlight = {
        enable = true,
      },
    })
  end,
}

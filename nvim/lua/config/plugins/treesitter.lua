return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require('nvim-treesitter.configs').setup({
      ensure_installed = {
        'lua',
        'go',
        'javascript',
        'typescript',
        'c',
        'vim',
        'vimdoc',
        'query',
        'markdown',
        'markdown_inline',
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}

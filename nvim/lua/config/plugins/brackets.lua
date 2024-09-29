return {
  {
    'echasnovski/mini.surround',
    event = { 'BufReadPre', 'BufNewFile' },
    version = '*',
    opts = {},
    --  saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    --  sd'   - [S]urround [D]elete [']quotes
    --  sr)'  - [S]urround [R]eplace [)] [']
  },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {},
  },
}

return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
    },
  },
  config = function()
    local telescope = require('telescope')
    local builtin = require('telescope.builtin')

    telescope.setup({
      defaults = {
        layout_config = {
          horizontal = { preview_width = 0.45 },
        },
      },
      pickers = {
        find_files = { hidden = true },
      },
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = 'smart_case',
        },
      },
    })

    telescope.load_extension('fzf')

    vim.keymap.set('n', '<leader>fh', builtin.help_tags)

    -- Edit neovim config
    vim.keymap.set('n', '<leader>nc', function()
      builtin.find_files({
        cwd = vim.fn.stdpath('config'),
      })
    end)

    vim.keymap.set('n', '<C-a>', builtin.find_files)
    vim.keymap.set('n', '<C-g>', builtin.git_files)
    vim.keymap.set('n', '<leader>fs', builtin.live_grep)
    vim.keymap.set('n', '<leader>fw', builtin.grep_string)
    vim.keymap.set('n', '<leader>sd', function()
      builtin.diagnostics({ bufnr = 0 })
    end)
    vim.keymap.set('n', '<leader>cc', builtin.colorscheme)
  end,
}

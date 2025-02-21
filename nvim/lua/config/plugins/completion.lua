return {
  'saghen/blink.cmp',
  version = '*',
  dependencies = { 'L3MON4D3/LuaSnip', version = 'v2.*' },
  opts = {
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'normal',
    },
    completion = {
      trigger = {
        show_on_insert_on_trigger_character = false,
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 0,
        window = {
          direction_priority = {
            menu_north = { 'e' },
            menu_south = { 'e' },
          },
        },
      },
    },
    snippets = { preset = 'luasnip' },
    cmdline = { enabled = false },
    sources = {
      default = { 'lsp', 'snippets', 'buffer', 'path' },
    },
  },
}

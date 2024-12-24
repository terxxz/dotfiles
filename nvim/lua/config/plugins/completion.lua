return {
  'saghen/blink.cmp',
  version = 'v0.*',
  event = { 'InsertEnter' },
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
    snippets = {
      expand = function(snippet)
        require('luasnip').lsp_expand(snippet)
      end,
      active = function(filter)
        if filter and filter.direction then
          return require('luasnip').jumpable(filter.direction)
        end
        return require('luasnip').in_snippet()
      end,
      jump = function(direction)
        require('luasnip').jump(direction)
      end,
    },
    sources = {
      default = { 'lsp', 'luasnip', 'buffer', 'path' },
      cmdline = {},
    },
  },
}

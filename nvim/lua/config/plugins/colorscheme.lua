return {
  'tjdevries/colorbuddy.nvim',
  config = function()
    require('colorbuddy').colorscheme('gruvbuddy')

    local colorbuddy = require('colorbuddy')
    local Color = colorbuddy.Color
    local Group = colorbuddy.Group
    local c = colorbuddy.colors
    local s = colorbuddy.styles

    Color.new('white', '#ffffff')
    Color.new('red', '#cc6666')
    Color.new('pink', '#fef601')
    Color.new('green', '#99cc99')
    Color.new('yellow', '#fef601')
    Color.new('blue', '#81a2be')
    Color.new('aqua', '#8ec07c')
    Color.new('cyan', '#8abeb7')
    Color.new('purple', '#8e6fbd')
    Color.new('violet', '#b294bb')
    Color.new('orange', '#de935f')
    Color.new('brown', '#a3685a')
    Color.new('seagreen', '#698b69')
    Color.new('turquoise', '#698b69')

    Group.new('Normal', c.superwhite, nil, s.none)

    Group.new('@punctuation.delimiter', c.superwhite)
    Group.new('@punctuation.bracket', c.superwhite)
    Group.new('@variable', c.superwhite, nil, s.none)
    Group.new('@constant', c.orange, nil, s.none)
    Group.new('@keyword', c.violet, nil, s.none)
    Group.new('@keyword.type', c.purple, nil, s.none)
    Group.new('@keyword.import', c.blue, nil, s.none)
    Group.new('@type', c.violet, nil, s.none)
    Group.new('@type.builtin', c.violet, nil, s.none)
  end,
}

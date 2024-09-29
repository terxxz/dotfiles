local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.window_close_confirmation = "NeverPrompt"

-- config.window_decorations = 'RESIZE'
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.colors = {
	cursor_bg = "#ffffff",
}

config.font_size = 20
config.font = wezterm.font("JetBrainsMono Nerd Font")

config.enable_scroll_bar = false

config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false

return config

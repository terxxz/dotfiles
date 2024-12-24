local wezterm = require("wezterm")
local config = wezterm.config_builder()
local mux = wezterm.mux

wezterm.on("gui-startup", function()
	local tab, pane, window = mux.spawn_window({})
	window:gui_window():toggle_fullscreen()
end)

-- This is for powershell
-- config.default_prog = { "pwsh.exe", "-NoLogo" }

config.default_domain = "WSL:Debian"

config.window_close_confirmation = "NeverPrompt"

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.colors = {
	background = "#111111",
	cursor_bg = "#ffffff",
}

config.font_size = 17
config.font = wezterm.font("JetBrainsMono Nerd Font")

config.enable_tab_bar = false
config.enable_scroll_bar = false

return config

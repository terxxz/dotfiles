local wezterm = require("wezterm")
local config = wezterm.config_builder()
local mux = wezterm.mux

wezterm.on("gui-startup", function(window)
	local tab, pane, window = mux.spawn_window(cmd or {})
	local gui_window = window:gui_window()
	gui_window:perform_action(wezterm.action.ToggleFullScreen, pane)
end)

config.keys = {
	{
		key = "q",
		mods = "CTRL|SHIFT",
		action = wezterm.action.QuitApplication,
	},
}

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
	background = "#141415",
	cursor_bg = "#fff",
}

config.font_size = 17
config.font = wezterm.font("JetBrainsMono Nerd Font")

config.cursor_thickness = "2px"

config.enable_tab_bar = false
config.enable_scroll_bar = false

return config

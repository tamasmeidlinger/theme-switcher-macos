local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("CaskaydiaMono Nerd Font")
config.font_size = 17

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.colors = {
	background = "#1E1E1E",
	foreground = "CCCCCC",
	cursor_bg = "rgba(200, 200, 200, 0.7)",
}

config.default_cursor_style = "SteadyBar"

config.cursor_thickness = 2

config.window_close_confirmation = "NeverPrompt"

return config

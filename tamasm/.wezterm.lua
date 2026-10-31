local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("CaskaydiaMono Nerd Font")
config.font_size = 17

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.window_background_opacity = 1
config.macos_window_background_blur = 10

config.color_scheme = "Catppuccin Frappe"

config.colors = {
	background = "#292C35",
}

config.default_cursor_style = "SteadyBar"

config.cursor_thickness = 2

config.window_close_confirmation = "NeverPrompt"

return config

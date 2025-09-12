local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "nord"
config.font = wezterm.font("JetBrains Mono")
config.enable_tab_bar = false
config.hide_mouse_cursor_when_typing = false
config.font_size = 10

config.colors = {
	background = "#2a303c",
}

return config

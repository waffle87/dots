local wezterm = require("wezterm")
local config = wezterm.config_builder()
local act = wezterm.action

config.font_size = 10
config.font = wezterm.font("JetBrains Mono")
config.color_scheme = "Solarized Dark (Gogh)"
config.enable_tab_bar = false

config.keys = {
	{
		key = "v",
		mods = "CTRL",
		action = act.PasteFrom("Clipboard"),
	},
	{
		key = "t",
		mods = "CTRL",
		action = act.SpawnWindow,
	},
	{
		key = "w",
		mods = "CTRL",
		action = act.CloseCurrentPane({ confirm = false }),
	},
	{
		key = "f",
		mods = "CTRL",
		action = act.Search({ CaseSensitiveString = "" }),
	},
}

return config

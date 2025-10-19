local wezterm = require("wezterm")
local config = wezterm.config_builder()
local act = wezterm.action

config.color_scheme = "nord"
config.font = wezterm.font("JetBrains Mono")
config.enable_tab_bar = false
config.hide_mouse_cursor_when_typing = false
config.alternate_buffer_wheel_scroll_speed = 1
config.font_size = 10

config.colors = {
	background = "#2a303c",
}

config.keys = {
	{
		key = "v",
		mods = "CTRL",
		action = act.PasteFrom("Clipboard"),
	},
	{
		key = "f",
		mods = "CTRL",
		action = act.Search("CurrentSelectionOrEmptyString"),
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
		key = "C",
		mods = "CTRL|SHIFT",
		action = act.ClearScrollback("ScrollbackOnly"),
	},
	{
		key = "C",
		mods = "CTRL|SHIFT",
		action = act.ClearScrollback("ScrollbackAndViewport"),
	},
	{
		key = "C",
		mods = "CTRL|SHIFT",
		action = act.Multiple({
			act.ClearScrollback("ScrollbackAndViewport"),
			act.SendKey({ key = "L", mods = "CTRL" }),
		}),
	},
	-- {
	--   key = 'm',
	--   mods = 'CMD',
	--   action = wezterm.action.DisableDefaultAssignment,
	-- },
}

return config

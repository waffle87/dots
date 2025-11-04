local wezterm = require("wezterm")
local config = wezterm.config_builder()
local act = wezterm.action

config.font = wezterm.font("JetBrains Mono")
config.font_size = 14
config.color_scheme = "OneDark (base16)"
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false
config.native_macos_fullscreen_mode = true

-- config.leader = {
-- 	key = "a",
-- 	mods = "CTRL",
-- 	timeout_milliseconds = 1000,
-- }

config.keys = {
	{
		key = "v",
		mods = "SUPER|SHIFT",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "h",
		mods = "SUPER|SHIFT",
		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "LeftArrow",
		mods = "SUPER|CTRL",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = "RightArrow",
		mods = "SUPER|CTRL",
		action = act.ActivatePaneDirection("Right"),
	},
	{
		key = "w",
		mods = "SUPER",
		action = act.CloseCurrentPane({ confirm = false }),
	},
	{
		key = "C",
		mods = "SUPER|SHIFT",
		action = act.ClearScrollback("ScrollbackOnly"),
	},
	{
		key = "C",
		mods = "SUPER|SHIFT",
		action = act.ClearScrollback("ScrollbackAndViewport"),
	},
	{
		key = "C",
		mods = "SUPER|SHIFT",
		action = act.Multiple({
			act.ClearScrollback("ScrollbackAndViewport"),
			act.SendKey({ key = "L", mods = "CTRL" }),
		}),
	},
}

config.colors = {
	tab_bar = {
		background = "#282c34",
		active_tab = {
			bg_color = "#1b1f27",
			fg_color = "#c8ccd4",
		},
		inactive_tab = {
			bg_color = "#353b45",
			fg_color = "#abb2bf",
		},
		inactive_tab_hover = {
			bg_color = "#545862",
			fg_color = "#b6bdca",
		},
		new_tab = {
			bg_color = "#282c34",
			fg_color = "#c8ccd4",
		},
		new_tab_hover = {
			bg_color = "#545862",
			fg_color = "#b6bcda",
		},
	},
}

return config

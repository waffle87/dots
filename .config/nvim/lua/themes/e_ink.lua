local M = {}

M.base_30 = {
	white = "#474747",
	black = "#CCCCCC", -- usually your theme bg
	darker_black = "#C2C2C2", -- 6% darker than black
	black2 = "#bdbdbd", -- 6% lighter than black
	one_bg = "#b3b3b3", -- 10% lighter than black
	one_bg2 = "#a3a3a3", -- 6% lighter than one_bg2
	one_bg3 = "#949494", -- 6% lighter than one_bg3
	grey = "#666666", -- 40% lighter than black (the % here depends so choose the perfect grey!)
	grey_fg = "#4d4d4d", -- 10% lighter than grey
	grey_fg2 = "#595959", -- 5% lighter than grey
	light_grey = "#A4A4A4",
	red = "#F85552",
	baby_pink = "#E66868",
	pink = "#e68a8a",
	line = "#a6a6a6", -- 15% lighter than black
	green = "#8DA101",
	vibrant_green = "#93B259",
	nord_blue = "#76a9c4",
	blue = "#3A94C5",
	seablue = "#2c7399",
	yellow = "#f2ae00", -- 8% lighter than yellow
	sun = "#f2ae00",
	purple = "#DF69BA",
	dark_purple = "#99487f",
	teal = "#35A77C",
	orange = "#F57D26",
	cyan = "#3A94C5",
	statusline_bg = "#B8B8B8",
	lightbg = "#A4A4A4",
	pmenu_bg = "#e68a8a",
	folder_bg = "#76a9c4",
}

M.base_16 = {
	base00 = "#CCCCCC",
	base01 = "#AEAEAE",
	base02 = "#A4A4A4",
	base03 = "#B8B8B8",
	base04 = "#A4A4A4", -- ?
	base05 = "#474747",
	base06 = "#5E5E5E",
	base07 = "#909090",

	base08 = "#7C7C7C",
	base09 = "#727272",
	base0A = "#686868",
	base0B = "#5E5E5E",
	base0C = "#545454",
	base0D = "#4A4A4A",
	base0E = "#474747",
	base0F = "#333333",
}

M.type = "light"

M = require("base46").override_theme(M, "e_ink")

return M

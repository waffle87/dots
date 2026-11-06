local ok, loc = pcall(require, "localtheme")
local M = {}

M.base46 = {
	theme = ok and loc.theme,
	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
	},
}

M.ui = {
	cmp = {
		style = "atom_colored",
	},
	telescope = {
		style = "bordered",
	},
	statusline = {
		theme = "minimal",
	},
}

M.term = {
	sizes = {
		vsp = 0.4,
	},
}

M.nvdash = {
	load_on_startup = true,
	header = {
		"           ▄ ▄                   ",
		"       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
		"       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
		"    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
		"  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
		"  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
		"▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
		"█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
		"    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
		"                                 ",
	},
}

return M

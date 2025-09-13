local M = {}

M.base46 = {
	theme = "onedark",
	hl_override = {
		Normal = {
			bg = "one_bg",
		},
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

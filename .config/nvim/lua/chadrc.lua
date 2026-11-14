local ok, loc = pcall(require, "localtheme")
loc = ok and loc or {}

local M = {}

M.base46 = {
	theme = loc.theme,
	hl_override = vim.tbl_deep_extend("force", {
		Comment = { italic = true },
		["@comment"] = { italic = true },
	}, loc.hl_override or {}),
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

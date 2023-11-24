---@type ChadrcConfig
local M = {}

M.ui = {
	statusline = {
		theme = "vscode_colored",
	},
	theme = "gruvbox",
	theme_toggle = { "gruvbox", "one_light" },
	changed_themes = {
		gruvbox = {
			base_16 = {
				base00 = "#1D2021",
			},
		},
	},
	tabufline = {
		lazyload = true,
	},
}

M.plugins = "custom.plugins"

return M

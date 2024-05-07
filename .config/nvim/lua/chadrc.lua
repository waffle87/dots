---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "everforest",
	theme_toggle = { "everforest", "everforest_light" },
	changed_themes = {
		everforest = {
			base_16 = {
				base00 = "#272E33",
			},
		},
	},
	statusline = { theme = "vscode_colored" },
	tabufline = { lazyload = true },
	nvdash = { load_on_startup = true },
}

return M

---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "onenord",
	theme_toggle = { "onenord", "onenord_light" },
	changed_themes = {
		onenord = {
			base_16 = {
				base00 = "#2E3440",
			},
		},
	},
	statusline = { theme = "vscode_colored" },
	tabufline = { lazyload = true },
	nvdash = { load_on_startup = true },
}

return M

---@type ChadrcConfig
local M = {}

M.ui = {
	statusline = {
		theme = "vscode_colored",
	},
	tabufline = {
		lazyload = true,
	},
	theme = "onenord",
  theme_toggle = "onenord_light",
}

M.plugins = "custom.plugins"

return M

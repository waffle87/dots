---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "onenord",
	theme_toggle = { "onenord", "onenord_light" },
	statusline = { theme = "vscode_colored" },
	tabufline = { lazyload = true },
	nvdash = { load_on_startup = true },
}

return M

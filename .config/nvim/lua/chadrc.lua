---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "solarized_dark",
	theme_toggle = { "onenord", "onenord_light" },
	statusline = { theme = "vscode_colored" },
	tabufline = { lazyload = true },
	nvdash = { load_on_startup = true },
}

return M

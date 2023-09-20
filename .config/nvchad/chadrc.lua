---@type ChadrcConfig
local M = {}

M.ui = {
	statusline = {
		theme = "vscode_colored",
		overriden_modules = function(modules)
			modules[2] = (function()
				local icon = " ? "
				local filename = (vim.fn.expand("%") == "" and "Empty ") or vim.fn.expand("%:t")
				if filename ~= "Empty " then
					local devicons_present, devicons = pcall(require, "nvim-web-devicons")
					if devicons_present then
						local ft_icon = devicons.get_icon(filename)
						icon = (ft_icon ~= nil and " " .. ft_icon) or ""
					end
					filename = " " .. filename .. " "
				end
				return "%#StText# " .. icon .. filename
			end)()
			modules[3] = (function()
				if not vim.b.gitsigns_head or vim.b.gitsigns_git_status then
					return ""
				end
				return "  " .. vim.b.gitsigns_status_dict.head .. "  "
			end)()
			modules[12] = (function()
				if rawget(vim, "lsp") then
					for _, client in ipairs(vim.lsp.get_active_clients()) do
						if client.attached_buffers[vim.api.nvim_get_current_buf()] and client.name ~= "null-ls" then
							return (vim.o.columns > 100 and "%#St_LspStatus#  " .. client.name .. "  ")
								or "%#St_LspStatus#  LSP "
						end
					end
				end
				return ""
			end)()
			modules[13] = (function()
				local dir_name = "%#St_cwd#  " .. vim.fn.fnamemodify(vim.fn.getcwd(), ":t") .. " "
				return (vim.o.columns > 85 and dir_name) or ""
			end)()
		end,
	},
	tabufline = {
		lazyload = true,
	},
	theme = "catppuccin",
}

M.plugins = "custom.plugins"

return M

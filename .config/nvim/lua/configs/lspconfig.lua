require("nvchad.configs.lspconfig").defaults()

local servers = {
	"html",
	"cssls",
	"clangd",
	"pylsp",
	"lua_ls",
	"verible",
}

vim.lsp.enable(servers)

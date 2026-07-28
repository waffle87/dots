require("nvchad.configs.lspconfig").defaults()

local servers = {
	"basedpyright",
	"clangd",
	"cssls",
	"html",
	"lua_ls",
	"tinymist",
}

vim.lsp.enable(servers)

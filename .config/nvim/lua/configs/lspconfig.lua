require("nvchad.configs.lspconfig").defaults()

local servers = {
	"basedpyright",
	"clangd",
	"cssls",
	"html",
	"lua_ls",
	"rust_analyzer",
	"tinymist",
	"vtsls",
}

vim.lsp.enable(servers)

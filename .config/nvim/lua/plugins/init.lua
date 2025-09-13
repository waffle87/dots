return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
		opts = require("configs.conform"),
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lspconfig")
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"lua",
				"html",
				"css",
				"python",
				"cpp",
				"c",
			},
		},
	},
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"clang-format",
				"lua-language-server",
				"python-lsp-server",
				"ruff",
				"stylua",
			},
		},
	},
}

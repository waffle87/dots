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
				"bash",
				"c",
				"cpp",
				"css",
				"html",
				"javascript",
				"lua",
				"make",
				"markdown",
				"python",
				"typst",
			},
		},
	},
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"basedpyright",
				"clang-format",
				"css-lsp",
				"html-lsp",
				"lua-language-server",
				"mdformat",
				"prettier",
				"ruff",
				"stylua",
				"tinymist",
				"tree-sitter-cli",
				"typstyle",
				"vtsls",
			},
		},
	},
}

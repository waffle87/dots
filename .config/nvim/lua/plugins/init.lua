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
				"c",
				"cpp",
				"css",
				"bash",
				"html",
				"lua",
				"make",
				"python",
				"typst",
				"systemverilog",
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
				"oxfmt",
				"ruff",
				"stylua",
				"tinymist",
				"tree-sitter-cli",
				"typstyle",
				"verible",
			},
		},
	},
}

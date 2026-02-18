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
				"verilog",
			},
		},
	},
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"clang-format",
				"lua-language-server",
				"prettierd",
				"python-lsp-server",
				"ruff",
				"stylua",
				"verible",
			},
		},
	},
}

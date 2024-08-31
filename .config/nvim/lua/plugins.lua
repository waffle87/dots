return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
		config = function()
			require("configs.conform")
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("nvchad.configs.lspconfig").defaults()
			require("configs.lspconfig")
		end,
	},
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"lua-language-server",
				"stylua",
				"html-lsp",
				"css-lsp",
				"prettier",
				"bash-language-server",
				"texlab",
			},
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"lua",
				"html",
				"css",
				"python",
				"rust",
				"cpp",
				"c",
				"bash",
				"html",
				"markdown",
				"scala",
			},
		},
	},
	{
		"lervag/vimtex",
		lazy = false,
		config = function()
			require("configs.vimtex")
		end,
	},
}

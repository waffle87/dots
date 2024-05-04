local options = {
	formatters_by_ft = {
		python = { "black" },
		rust = { "rustfmt" },
		lua = { "stylua" },
		cpp = { "clang-format" },
		c = { "clang-format" },
		css = { "prettier" },
		html = { "prettier" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
}

require("conform").setup(options)

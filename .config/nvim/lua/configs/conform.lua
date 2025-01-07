local options = {
	formatters_by_ft = {
		lua = { "stylua" },
		css = { "prettier" },
		html = { "prettier" },
		json = { "prettier" },
		python = { "ruff_format" },
		cpp = { "clang-format" },
		c = { "clang-format" },
		typst = { "typstfmt" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
}

return options

local options = {
	formatters_by_ft = {
		css = { "prettier" },
		html = { "prettier" },
		python = { "ruff_format" },
		cpp = { "clang-format" },
		c = { "clang-format" },
		typst = { "typstyle" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
}

return options

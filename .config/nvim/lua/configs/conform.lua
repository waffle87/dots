local options = {
	formatters_by_ft = {
		css = { "prettier" },
		html = { "prettier" },
		python = {
			"ruff_fix",
			"ruff_format",
			"ruff_organize_imports",
		},
		cpp = { "clang-format" },
		c = { "clang-format" },
		lua = { "stylua" },
		v = { "verible-verilog-format" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
}

return options

local options = {
	formatters_by_ft = {
		cpp = { "clang-format" },
		c = { "clang-format" },
		css = { "oxfmt" },
		html = { "oxfmt" },
		lua = { "stylua" },
		markdown = { "oxfmt" },
		python = {
			"ruff_fix",
			"ruff_format",
			"ruff_organize_imports",
		},
		typst = { "typstyle" },
		v = { "verible-verilog-format" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
}

return options

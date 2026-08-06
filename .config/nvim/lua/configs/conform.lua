local options = {

	formatters_by_ft = {
		cpp = { "clang-format" },
		c = { "clang-format" },
		css = { "biome" },
		html = { "biome" },
		lua = { "stylua" },
		markdown = { "mdformat" },
		python = {
			"ruff_fix",
			"ruff_format",
			"ruff_organize_imports",
		},
		typst = { "typstyle" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
}

return options

local options = {
  formatters_by_ft = {
    c = { "clang-format" },
    cpp = { "clang-format" },
  },
  format_on_save = {
     timeout_ms = 500,
     lsp_fallback = true,
  },
}

require("conform").setup(options)

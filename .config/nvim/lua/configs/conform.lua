local options = {
  formatters_by_ft = {
    c = { "clang-format" },
    cpp = { "clang-format" },
    python = { "black" },
    md = { "mdformat" },
    rs = { "rustfmt" },
    lua = { "stylua" },
  },
  format_on_save = {
     timeout_ms = 500,
     lsp_fallback = true,
  },
}

require("conform").setup(options)

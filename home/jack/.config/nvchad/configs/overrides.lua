local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "cpp",
    "c",
    "markdown",
    "python",
    "rust"
  },
  indent = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
    "clangd",
    "clang-format",
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M

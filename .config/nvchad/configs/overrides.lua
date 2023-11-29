local M = {}

M.treesitter = {
  ensure_installed = {
    "cpp",
    "c",
    "python",
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

-- git support in nvimtree
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

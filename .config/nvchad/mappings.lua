local M = {}

M.general = {
  i = {
    ["<C-l>"] = { "<C-g>u<Esc>[s1z=`]a<C-g>u", "spell check and fix", opts = { noremap = true } },
  },
}

return M

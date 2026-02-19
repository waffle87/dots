require("nvchad.configs.lspconfig").defaults()

local servers = { "basedpyright", "clangd", "cssls", "html", "lua_ls", "verible" }

vim.lsp.enable(servers)

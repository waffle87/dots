require("nvchad.configs.lspconfig").defaults()

local servers = { "clangd", "pylsp", "lua_ls" }

vim.lsp.enable(servers)

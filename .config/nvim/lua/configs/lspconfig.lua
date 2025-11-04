require("nvchad.configs.lspconfig").defaults()

local servers = { "clangd", "pylsp", "lua_ls", "verible" }

vim.lsp.enable(servers)

local ls = require("luasnip")
-- some shorthands...
local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node

local date = function() return {os.date('%Y-%m-%d')} end

ls.add_snippets(nil, {
    all = {
        snip({
            trig = "date",
            namr = "Date",
            dscr = "Date in the form of YYYY-MM-DD",
        }, {
            func(date, {}),
        }),
    },
})

require("luasnip.loaders.from_vscode").load {
  exclude = {
    "cobol",
    "csharp",
    "css",
    "docker",
    "frameworks",
    "java",
    "javascript",
    "lua",
    "php",
    "PowerShell",
    "dart",
    "eelixir",
    "elixir",
    "erb",
    "erlang",
    "fennel",
    "fortran",
    "fsh",
    "gdscript",
    "gitcommit",
    "glsl",
    "go",
    "haskell",
    "html",
    "julia",
    "kotlin",
    "kubernetes",
    "license",
    "liquid",
    "make",
    "mint",
    "norg",
    "nushell",
    "objc",
    "org",
    "plantuml",
    "quarto",
    "r",
    "rescript",
    "rmarkdown",
    "ruby",
    "scala",
    "solidity",
    "sql",
    "svelte",
    "swift",
    "systemverilog",
    "verilog",
    "vhdl",
  },
}

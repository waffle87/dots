local present, null_ls = pcall(require, "null-ls")

if not present then
	return
end

local b = null_ls.builtins

local sources = {
	-- lua
	b.formatting.stylua,

	-- cpp
	b.formatting.clang_format,

	-- rust
	b.formatting.rustfmt,

	-- python
	b.formatting.black,

	-- latex
	b.formatting.latexindent,

  -- bash
  b.formatting.beautysh,
}

null_ls.setup({
	debug = true,
	sources = sources,
})

local notify = vim.notify
vim.notify = function(msg, ...)
	if msg:match("warning: multiple different client offset_encodings") then
		return
	end
	notify(msg, ...)
end

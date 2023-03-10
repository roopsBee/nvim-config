local status, indent_blankline = pcall(require, "indent_blankline")
if not status then
	return
end

vim.opt.list = true

indent_blankline.setup({
	space_char_blankline = " ",
	show_current_context = true,
	show_current_context_start = true,
	use_treesitter_scope = true,
	buftype_exclude = { "terminal" },
	filetype_exclude = { "help", "markdown" },
})

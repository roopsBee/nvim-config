local status, supermaven = pcall(require, "supermaven-nvim")
if not status then
	return
end

supermaven.setup({
	keymaps = {
		accept_suggestion = "<Tab>",
		clear_suggestion = "<C-]>",
		accept_word = "<C-k>",
	},
	ignore_filetypes = { cpp = true },
	color = {
		suggestion_color = "#ffffff",
		cterm = 244,
	},
	disable_inline_completion = false, -- disables inline completion for use with cmp
	disable_keymaps = false, -- disables built in keymaps for more manual control
})

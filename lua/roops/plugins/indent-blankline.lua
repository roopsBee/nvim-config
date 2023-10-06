local status, ibl = pcall(require, "ibl")
if not status then
	return
end

vim.opt.list = true

ibl.setup({
	indent = {
		char = "|",
	},
	scope = {
		char = "|",
	},
})

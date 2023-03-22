local status, tailwind_sorter = pcall(require, "tailwind-sorter")
if not status then
	return
end

tailwind_sorter.setup({
	on_save_enabled = true,
})

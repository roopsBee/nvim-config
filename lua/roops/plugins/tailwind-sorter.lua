local status, tailwind_sorter = pcall(require, "tailwind-sorter")
if not status then
	return
end

tailwind_sorter.setup({
	on_save_enabled = true,
	on_save_pattern = { "*.html", "*.js", "*.jsx", "*.tsx", "*.astro" }, -- The file patterns to watch and sort.
})

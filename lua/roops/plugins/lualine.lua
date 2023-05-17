-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
	return
end

lualine.setup({
	options = {
		theme = "tokyonight",
		disabled_filetypes = { "packer" },
	},
	-- sections = { lualine_c = { require("auto-session.lib").current_session_name } },
})

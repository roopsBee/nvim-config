-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
	return
end

lualine.setup({
	options = {
		theme = "tokyonight",
		disabled_filetypes = { "packer", "NvimTree" },
	},
	sections = { lualine_c = { require("auto-session-library").current_session_name } },
})

local status, bufferline = pcall(require, "bufferline")
if not status then
	return
end

bufferline.setup({
	options = {
		diagnostics = "nvim_lsp",
		show_buffer_close_icons = false,
		show_close_icon = true,
		show_buffer_icons = true,
		show_tab_indicators = true,
		separator_style = "thin",
		enforce_regular_tabs = false,
		always_show_bufferline = true,
		sort_by = "insert_at_end",
		diagnostics_indicator = function(count, level)
			local icon = level:match("error") and " " or " "
			return " " .. icon .. count
		end,
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				text_align = "left",
				separator = true,
			},
		},
	},
})

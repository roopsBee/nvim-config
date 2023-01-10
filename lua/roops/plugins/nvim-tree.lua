local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#a442f5 ]])

-- configure nvim-tree
nvimtree.setup({
	sync_root_with_cwd = true,
	-- change folder arrow icons
	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "", -- arrow when folder is closed
					arrow_open = "", -- arrow when folder is open
				},
			},
		},
	},
	-- disable window_picker for
	-- explorer to work well with
	-- window splits
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
	-- diagnostics = {
	-- 	enable = true,
	-- 	show_on_dirs = true,
	-- 	icons = {
	-- 		hint = "",
	-- 		info = "",
	-- 		warning = "",
	-- 		error = "",
	-- 	},
	-- },
	respect_buf_cwd = false,
	update_focused_file = {
		enable = true,
		update_root = false,
	}, -- 	git = {
	-- 		ignore = false,
	-- 	},
})

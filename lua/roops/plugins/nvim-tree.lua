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
		highlight_modified = "all",
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "", -- arrow when folder is closed
					arrow_open = "", -- arrow when folder is open
				},
			},
		},
	},
	view = { side = "right" },
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
	diagnostics = {
		enable = true,
		-- 	show_on_dirs = true,
		-- 	icons = {
		-- 		hint = "",
		-- 		info = "",
		-- 		warning = "",
		-- 		error = "",
		-- 	},
	},
	respect_buf_cwd = false,
	update_focused_file = {
		enable = true,
		update_root = false,
	}, -- 	git = {
	-- 		ignore = false,
	-- 	},
})
-- open nvim-tree on setup

local function open_nvim_tree(data)
	-- buffer is a [No Name]
	local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

	-- buffer is a directory
	local directory = vim.fn.isdirectory(data.file) == 1

	if not no_name and not directory then
		return
	end

	-- change to the directory
	if directory then
		vim.cmd.cd(data.file)
	end

	-- open the tree
	require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

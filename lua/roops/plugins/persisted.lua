local function close_neo_tree()
	require("neo-tree.sources.manager").close_all()
	vim.notify("closed all")
end

require("persisted").setup({
	use_git_branch = true, -- create session files based on the branch of the git enabled repository
	autoload = true, -- automatically load the session for the cwd on Neovim startup
	follow_cwd = true, -- change session file name to match current working directory if it changes
})

local group = vim.api.nvim_create_augroup("PersistedHooks", {})

vim.api.nvim_create_autocmd({ "User" }, {
	pattern = "PersistedSavePre",
	group = group,
	callback = function()
		close_neo_tree()
	end,
})

vim.api.nvim_create_autocmd({ "User" }, {
	pattern = "PersistedLoadPre",
	group = group,
	callback = function()
		vim.cmd("silent %bd!")
	end,
})

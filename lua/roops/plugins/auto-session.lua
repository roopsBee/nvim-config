local status, auto_session = pcall(require, "auto-session")
if not status then
	return
end

local function close_neo_tree()
	require("neo-tree.sources.manager").close_all()
	vim.notify("closed all")
end

local function open_neo_tree()
	vim.notify("opening neotree")
	require("neo-tree.sources.manager").show("filesystem")
end
auto_session.setup({
	auto_session_suppress_dirs = { "~/", "~/Downloads", "/" },
	auto_save_enabled = true,
	auto_restore_enabled = true,
	auto_session_use_git_branch = true,
	bypass_session_save_file_types = { "neo-tree" },
	pre_save_cmds = {
		close_neo_tree,
	},
	post_restore_cmds = {
		open_neo_tree,
	},
	session_lens = {
		load_on_startup = true,
		path_display = { "shorten" },
		prompt_title = "SESSIONS",
	},
})
-- require("auto-session").setup_session_lens()

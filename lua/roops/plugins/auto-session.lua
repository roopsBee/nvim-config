local status, auto_session = pcall(require, "auto-session")
if not status then
	return
end

auto_session.setup({
	auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
	post_restore_cmds = { ":NvimTreeToggle" },
	auto_save_enabled = true,
	auto_restore_enabled = true,
})

local status, auto_session = pcall(require, "auto-session")
if not status then
	return
end

auto_session.setup({
	auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
})

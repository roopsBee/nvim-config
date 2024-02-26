local status, refactoring = pcall(require, "refactoring")
if not status then
	return
end

refactoring.setup()

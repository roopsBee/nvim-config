local status, inlay_hints = pcall(require, "inlay-hints")
if not status then
	return
end

inlay_hints.setup()

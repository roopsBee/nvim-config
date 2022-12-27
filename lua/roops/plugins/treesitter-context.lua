local setup, treesitter_context = pcall(require, "treesitter-context")
if not setup then
	return
end

treesitter_context.setup()

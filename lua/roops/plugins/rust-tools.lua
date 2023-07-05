local status, rust_tools = pcall(require, "rust-tools")
if not status then
	return
end

local inlay_hints = require("inlay-hints")

rust_tools.setup({
	tools = {
		on_initialised = function()
			inlay_hints.set_all()
		end,
		inlay_hints = {
			auto = false,
		},
	},
	server = {
		on_attach = function(c, bufnr)
			inlay_hints.on_attach(c, bufnr)
			local keymap = vim.keymap

			-- Hover actions
			keymap.set("n", "<leader>ha", rust_tools.hover_actions.hover_actions, { buffer = bufnr })
			-- Code action groups
			keymap.set("n", "<Leader>ga", rust_tools.code_action_group.code_action_group, { buffer = bufnr })
		end,
	},
})

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
			-- set keybinds
			local opts = { noremap = true, silent = true, buffer = bufnr }
			keymap.set("n", "<leader>lf", "<cmd>Lspsaga lsp_finder<CR>", opts) -- show definition, references
			keymap.set("n", "<leader>ld", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts) -- got to declaration
			keymap.set("n", "<leader>lp", "<cmd>Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
			keymap.set("n", "<leader>lt", "<cmd>Lspsaga peek_type_definition<CR>", opts) -- see definition and make edits in window
			keymap.set("n", "<leader>lg", "<cmd>Lspsaga goto_definition<CR>", opts) -- see definition and make edits in window
			keymap.set("n", "<leader>li", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts) -- go to implementation
			keymap.set("n", "<leader>la", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
			keymap.set("n", "<leader>lr", "<cmd>Lspsaga rename<CR>", opts) -- smart rename
			keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
			keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
			keymap.set("n", "<leader>hd", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
			keymap.set("n", "<leader>ll", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
			keymap.set("n", "<leader>lc", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
			vim.keymap.set({ "x", "v" }, "<leader>a", vim.lsp.buf.code_action, opts) -- see available code actions in visual mode
		end,
	},
})

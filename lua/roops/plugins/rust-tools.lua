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

			local opts = { noremap = true, silent = true, buffer = bufnr }
			-- Hover actions
			keymap.set("n", "<C-space>", rust_tools.hover_actions.hover_actions, { buffer = bufnr })
			-- Code action groups
			keymap.set("n", "<Leader>a", rust_tools.code_action_group.code_action_group, { buffer = bufnr })

			keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts) -- show definition, references
			keymap.set("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts) -- got to declaration
			keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
			keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts) -- go to implementation
			keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
			keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts) -- smart rename
			keymap.set("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
			keymap.set("n", "<leader>D", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
			keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
			keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
			keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
			keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", opts) -- see outline on right hand side
		end,
	},
})

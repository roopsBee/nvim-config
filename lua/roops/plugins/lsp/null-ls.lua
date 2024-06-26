-- import null-ls plugin safely
local setup, null_ls = pcall(require, "null-ls")
if not setup then
	return
end

-- to setup format on save
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- configure null_ls
null_ls.setup({
	-- setup formatters & linters
	sources = {
		--  to disable file types use
		--  "formatting.prettier.with({disabled_filetypes: {}})" (see null-ls docs)
		null_ls.builtins.formatting.prettierd.with({ -- js/ts formatter
			extra_filetypes = { "astro" },
		}),
		null_ls.builtins.formatting.stylua, -- lua formatter
		-- diagnostics.eslint.with({
		-- js/ts linter
		-- only enable eslint if root has .eslintrc.js (not in youtube nvim video)
		-- condition = function(utils)
		-- return utils.root_has_file(".eslintrc.js") -- change file extension if you use something else
		-- end,
		-- }),
	},
	-- configure format on save
	on_attach = function(current_client, bufnr)
		if current_client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					-- vim.cmd("TailwindSort")
					vim.lsp.buf.format({
						timeout_ms = 5000,
						filter = function(client)
							--  only use null-ls for formatting instead of lsp server
							return client.name == "null-ls"
						end,
						bufnr = bufnr,
					})
				end,
			})
		end
	end,
})

-- auto install packer if not installed
--
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

-- add list of plugins to install
return packer.startup(function(use)
	use({
		"laytan/tailwind-sorter.nvim",
		requires = { "nvim-treesitter/nvim-treesitter", "nvim-lua/plenary.nvim" },
		config = function()
			require("tailwind-sorter").setup()
		end,
		run = "cd formatter && npm i && npm run build",
	})
	-- packer can manage itself
	use("wbthomason/packer.nvim")

	use("nvim-lua/plenary.nvim") -- lua functions that many plugins use

	-- colorscheme
	-- use("bluz71/vim-nightfly-guicolors")
	use("folke/tokyonight.nvim")

	use("szw/vim-maximizer") -- maximizes and restores current window

	-- essential plugins
	use("tpope/vim-surround") -- add, delete, change surroundings (it's awesome)
	use("inkarkat/vim-ReplaceWithRegister") -- replace with register contents using motion (gr + motion)

	-- commenting with gc
	use("numToStr/Comment.nvim")

	-- use("ryanoasis/vim-devicons")
	use("nvim-tree/nvim-web-devicons")

	-- statusline
	use("nvim-lualine/lualine.nvim")

	-- fuzzy finding w/ telescope
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder

	-- autocompletion
	use("hrsh7th/nvim-cmp") -- completion plugin
	use("hrsh7th/cmp-buffer") -- source for text in buffer
	use("hrsh7th/cmp-path") -- source for file system paths
	use("hrsh7th/cmp-nvim-lsp")

	-- snippets
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	use("rafamadriz/friendly-snippets") -- useful snippets

	-- managing & installing lsp servers, linters & formatters
	use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
	use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

	-- configuring lsp servers
	use("neovim/nvim-lspconfig") -- easily configure language servers
	use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
	use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
	use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion
	use("simrat39/rust-tools.nvim") -- rust tools
	use("mfussenegger/nvim-dap") -- rust debugging
	use("simrat39/inlay-hints.nvim") -- inlay hints

	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

	-- treesitter configuration
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	-- auto closing
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

	-- git integration
	use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

	-- wilder better command finder
	use("gelguy/wilder.nvim")
	use("sharkdp/fd")
	use("nixprime/cpsm")
	use("romgrk/fzy-lua-native")
	use("roxma/nvim-yarp")

	-- github copilot
	use("github/copilot.vim")

	-- scroll
	use("nvim-treesitter/nvim-treesitter-context") -- sticky scroll

	-- buffer line - barbar potentially is causing nvim to crash
	use({ "akinsho/bufferline.nvim", tag = "v4.*", requires = "nvim-tree/nvim-web-devicons" })
	use("famiu/bufdelete.nvim") -- delete buffer without closing window

	-- blank line indentation plugin
	use("lukas-reineke/indent-blankline.nvim")

	-- toggleterm terminal
	use("akinsho/toggleterm.nvim")

	-- which-key comand keybindings popup plugin
	use("folke/which-key.nvim")

	-- diffview
	use({ "sindrets/diffview.nvim", requires = "nvim-lua/plenary.nvim" })

	-- leap motions - move around faster
	use("tpope/vim-repeat") -- dependency for leap motions
	use("ggandor/leap.nvim")

	-- session management
	-- use({ "rmagatti/auto-session", tag = "v2.*" })

	use({
		"olimorris/persisted.nvim",
		config = function()
			require("persisted").setup()
		end,
	})

	-- better quickfix
	use({ "kevinhwang91/nvim-bqf", ft = { "qf" } })
	use({
		"junegunn/fzf",
		run = function()
			vim.fn["fzf#install"]()
		end,
	})

	use("nvim-lua/popup.nvim")
	use("nvim-telescope/telescope-media-files.nvim")

	--neo-tree
	vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

	use("MunifTanjim/nui.nvim")
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
		config = function()
			-- Unless you are still migrating, remove the deprecated commands from v1.x
			vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

			-- If you want icons for diagnostic errors, you'll need to define them somewhere:
			vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
			vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
			vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
			vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })
			-- NOTE: this is changed from v1.x, which used the old style of highlight groups
			-- in the form "LspDiagnosticsSignWarning"

			vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
		end,
	})

	if packer_bootstrap then
		require("packer").sync()
	end
end)

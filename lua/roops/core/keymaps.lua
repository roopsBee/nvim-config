vim.g.mapleader = " "

local keymap = vim.keymap

---- general keymaps

keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

keymap.set("n", "<C-d>", "<C-d>zz") -- scroll down half a page
keymap.set("n", "<C-u>", "<C-u>zz") -- scroll up half a page
keymap.set("n", "n", "nzzzv") -- center cursor on search
keymap.set("n", "N", "Nzzzv") -- center cursor on search

keymap.set("x", "<leader>p", '"_dP') -- paste over selection and keep same buffer

keymap.set("n", "<leader>d", '"_d') -- delete to without yanking
keymap.set("n", "<leader>c", '"_c') -- change to without yanking
keymap.set("v", "<leader>d", '"_d') -- delete to without yanking
keymap.set("v", "<leader>c", '"_c') -- change to without yanking

-- keymap.set("n", "<leader>q", ":q<CR>") -- quit
keymap.set("n", "<leader>Q", ":qa!<CR>") -- quit all
keymap.set("n", "<leader>w", ":w<CR>") -- save
keymap.set("n", "<leader>W", ":wa<CR>") -- save all

---- plugin keymaps

keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle maximise tab

-- git
keymap.set("n", "<leader>gg", ":lua _LAZYGIT_TOGGLE()<CR>") -- toggle lazygit function declared in lazygit.lua
keymap.set("n", "<leader>gd", ":DiffviewOpen<CR>") -- open diff view
keymap.set("n", "<leader>gx", ":DiffviewClose<CR>") -- close diff view

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- barbar

-- Move to previous/next
keymap.set("n", "<M-j>", "<Cmd>BufferPrevious<CR>")
keymap.set("n", "<M-k>", "<Cmd>BufferNext<CR>")
-- Re-order to previous/next
keymap.set("n", "<M-h>", "<Cmd>BufferMovePrevious<CR>")
keymap.set("n", "<M-l>", "<Cmd>BufferMoveNext<CR>")
-- Goto buffer in position...
keymap.set("n", "<M-1>", "<Cmd>BufferGoto 1<CR>")
keymap.set("n", "<M-2>", "<Cmd>BufferGoto 2<CR>")
keymap.set("n", "<M-3>", "<Cmd>BufferGoto 3<CR>")
keymap.set("n", "<M-4>", "<Cmd>BufferGoto 4<CR>")
keymap.set("n", "<M-5>", "<Cmd>BufferGoto 5<CR>")
keymap.set("n", "<M-6>", "<Cmd>BufferGoto 6<CR>")
keymap.set("n", "<M-7>", "<Cmd>BufferGoto 7<CR>")
keymap.set("n", "<M-8>", "<Cmd>BufferGoto 8<CR>")
keymap.set("n", "<M-9>", "<Cmd>BufferGoto 9<CR>")
keymap.set("n", "<M-0>", "<Cmd>BufferLast<CR>")
-- Pin/unpin buffer
keymap.set("n", "<M-p>", "<Cmd>BufferPin<CR>")
-- Close buffer
keymap.set("n", "<M-x>", "<Cmd>BufferClose<CR>")
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
keymap.set("n", "<C-p>", "<Cmd>BufferPick<CR>")
-- Sort automatically by...
keymap.set("n", "<leader>bb", "<Cmd>BufferOrderByBufferNumber<CR>")
keymap.set("n", "<leader>bd", "<Cmd>BufferOrderByDirectory<CR>")
keymap.set("n", "<leader>bl", "<Cmd>BufferOrderByLanguage<CR>")
keymap.set("n", "<leader>bw", "<Cmd>BufferOrderByWindowNumber<CR>")

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

-- restart lsp server
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

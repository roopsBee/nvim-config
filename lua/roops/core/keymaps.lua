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

keymap.set("i", "<C-e>", "=") -- remap =
keymap.set("n", ";", ":") -- remap normal mode ; to : command

-- format document
keymap.set("n", "<leader>fm", ":lua vim.lsp.buf.format({async = true})<CR>")

-- keymap.set("n", "<leader>d", '"_d') -- delete to without yanking
keymap.set("n", "<leader>c", '"_c') -- change to without yanking
-- keymap.set("v", "<leader>d", '"_d') -- delete to without yanking
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

-- neotree
keymap.set("n", "<leader>e", ":Neotree toggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
keymap.set("n", "<leader>fr", ":lua require('telescope.builtin').lsp_references()<cr>") -- list references to symbol under cursor"
keymap.set("n", "<leader>fl", "<cmd>Telescope resume<cr>") -- list references to symbol under cursor"
keymap.set("n", "<leader>fi", "<cmd>Telescope media_files<cr>") -- list media files in current working directory

---- bufferline
---
-- Move to previous/next
-- keymap.set("n", "<M-k>", "<Cmd>BufferLineMoveNext<CR>")
-- keymap.set("n", "<M-j>", "<Cmd>BufferLineMovePrev<CR>")
--cycle through buffers
keymap.set("n", "<M-.>", "<Cmd>BufferLineCycleNext<CR>")
keymap.set("n", "<M-,>", "<Cmd>BufferLineCyclePrev<CR>")
-- Magic buffer-picking mode
keymap.set("n", "<leader>p", "<Cmd>BufferLinePick<CR>")
--delete buffer
keymap.set("n", "<M-x>", "<Cmd>Bdelete<CR>")

-- restart lsp server
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- sessions
keymap.set("n", "<leader>sf", "<Cmd>Telescope persisted<CR>")

-- rust
keymap.set("n", "<leader>rr", ":lua _CARGO_RUN()<CR>") -- toggle lazygit function declared in lazygit.lua

-- quickfix
keymap.set("n", "<leader>sq", ":copen<CR>") -- open quickfix window

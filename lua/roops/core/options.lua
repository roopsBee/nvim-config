local opt = vim.opt

-- undo options
opt.undofile = true
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
-- opt.colorcolumn = "80"

-- backspace
opt.backspace = "indent,eol"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.scrolloff = 8

opt.iskeyword:append("-")

opt.completeopt = "menu,menuone,noselect"
-- session options
opt.sessionoptions = "blank,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

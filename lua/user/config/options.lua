vim.cmd("let g:netrw_liststyle = 3")
-- line numbers
vim.opt.relativenumber = true
vim.opt.number = true
-- tabs & indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.wrap = false
-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.cursorline = true
-- colour
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"
-- backspace
vim.opt.backspace = "indent,eol,start"
-- clipboard
vim.opt.clipboard:append("unnamedplus")
-- windows
vim.opt.splitright = true
vim.opt.splitbelow = true
-- scrolling
vim.opt.ttyfast = true

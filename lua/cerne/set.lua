-- FAT cursor
vim.opt.guicursor       = ""

-- Relative numbered lines setup
vim.opt.nu              = true
vim.opt.relativenumber  = true

-- Tab Configuration
vim.opt.tabstop         = 2
vim.opt.softtabstop     = 2
vim.opt.shiftwidth      = 2
vim.opt.expandtab       = true

-- Smart indentation
vim.opt.smartindent     = true

-- Line wrapping
vim.opt.wrap            = true

-- Disable backups and enables the undotree plugin to have access to more informations
vim.opt.swapfile        = false
vim.opt.backup          = false
-- vim.opt.undodir         = os.getenv("HOME").. "/.vim/undodir" -- Apparently it's not working (Linux Version)
vim.opt.undofile        = true

-- Better search
vim.opt.hlsearch        = false
vim.opt.incsearch       = true

vim.opt.termguicolors   = true

-- Never have less than 8 lines on the bottom of the file, appart from the file's ending
vim.opt.scrolloff       = 8
vim.opt.signcolumn      = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

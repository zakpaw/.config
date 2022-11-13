vim.g.mapleader = " "

vim.opt.nu = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wrap = false

-- tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- appearance
vim.opt.termguicolors = true

-- clipboard
vim.opt.clipboard:append("unnamedplus")

vim.opt.cmdheight = 3
vim.opt.updatetime = 5

-- netrw
vim.g.netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_browse_split = 2
vim.g.netrw_preview = 1
vim.g.netrw_winsize = 80
vim.g.netrw_keepdir = 0

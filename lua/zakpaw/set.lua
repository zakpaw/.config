vim.g.mapleader = " "

-- line numbers
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
vim.opt.cmdheight = 2
vim.opt.updatetime = 5
vim.opt.scrolloff = 8

-- terraform
vim.g.terraform_fmt_on_save = true
vim.g.terraform_align = true

-- other
vim.opt.clipboard:append("unnamedplus")
vim.opt.backspace = "indent,eol,start"
vim.opt.undofile = true

-- netrw
vim.g.netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_keepdir = 0
vim.g.netrw_winsize = -25

-- autocmd
vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]

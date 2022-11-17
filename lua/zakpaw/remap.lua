local nnoremap = require("zakpaw.keymap").nnoremap

nnoremap("<leader>q", "<cmd>close<cr>")
nnoremap("<leader>e", "<cmd>topleft vs<cr>|<cmd>Ex<cr>")

-- telescope
nnoremap("<C-f>", "<cmd>Telescope find_files<cr>")
nnoremap("<C-g>", "<cmd>Telescope live_grep<cr>")
nnoremap("<C-b>", "<cmd>Telescope git_branches<cr>")

-- lspconfig
nnoremap("gd", "<cmd>lua vim.lsp.buf.definition()<cr>")
nnoremap("gD", "<cmd>lua vim.lsp.buf.declaration()<cr>")
nnoremap("gi", "<cmd>lua vim.lsp.buf.implementation()<cr>")
nnoremap("K", "<cmd>lua vim.lsp.buf.hover()<cr>")

-- netrw
nnoremap("<nop>", "<buffer><Plug>NetrwRefresh") -- stop netrw from refreshing at c-l

-- other
nnoremap("<F5>", "<cmd>UndotreeToggle<cr>")
nnoremap("<leader>=", "<C-a>") -- increment number
nnoremap("<leader>-", "<C-x>") -- decrement number
nnoremap("<C-e>", "<cmd>lua vim.diagnostic.open_float({'line'})<cr>")

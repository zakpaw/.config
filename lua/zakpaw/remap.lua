local nnoremap = require("zakpaw.keymap").nnoremap

nnoremap("<leader>q", "<cmd>close<cr>")
nnoremap("<leader>e", "<cmd>topleft vs<cr>|<cmd>Ex<cr>")

-- telescope
nnoremap("<C-f>", "<cmd>Telescope find_files<cr>")
nnoremap("<C-d>", "<cmd>Telescope find_files hidden=true<cr>")
nnoremap("<C-g>", "<cmd>Telescope live_grep<cr>")
nnoremap("<C-b>", "<cmd>Telescope git_branches theme=dropdown<cr>")
nnoremap("<C-p>", "<cmd>Telescope neoclip plus theme=dropdown initial_mode=normal<cr>")

-- lspconfig
nnoremap("gd", "<cmd>Telescope lsp_definitions theme=dropdown<cr>")
nnoremap("gD", "<cmd>Telescope lsp_references theme=dropdown<cr>")
nnoremap("K", "<cmd>lua vim.lsp.buf.hover()<cr>")

-- netrw
nnoremap("<nop>", "<buffer><Plug>NetrwRefresh") -- stop netrw from refreshing at c-l

-- other
nnoremap("<F5>", "<cmd>UndotreeToggle<cr>")
nnoremap("<leader>=", "<C-a>") -- increment number
nnoremap("<leader>-", "<C-x>") -- decrement number
nnoremap("<C-e>", "<cmd>lua vim.diagnostic.open_float({'line'})<cr>")

local nnoremap = require("zakpaw.keymap").nnoremap
local vnoremap = require("zakpaw.keymap").vnoremap

-- basic normal
nnoremap("<leader>q", "<cmd>close<cr>")
nnoremap("<leader>e", "<cmd>Ex<cr>")
nnoremap("<leader>w", "<cmd>topleft vs<cr>|<cmd>Ex<cr>")
nnoremap("<s-H>", "^")
nnoremap("<s-L>", "$")
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")
nnoremap("n", "nzz")
nnoremap("N", "Nzz")
nnoremap("x", '"_x')
nnoremap("<leader>=", "<C-a>") -- increment number
nnoremap("<leader>-", "<C-x>") -- decrement number
nnoremap("<Tab>", "<cmd>bnext<cr>") -- next bufferrema
nnoremap("<S-Tab>", "<cmd>bprev<cr>") -- previous buffer

-- basic visual
vnoremap("<s-J>", "<cmd>m '>+1<cr>") -- move line down
vnoremap("<s-K>", "<cmd>m '<-2<cr>") -- move line up
vnoremap("<s-H>", "^")
vnoremap("<s-L>", "$")

-- telescope
nnoremap("<C-f>", "<cmd>Telescope find_files<cr>")
nnoremap("<C-s>", "<cmd>Telescope find_files hidden=true<cr>")
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
nnoremap("<C-e>", "<cmd>lua vim.diagnostic.open_float({'line'})<cr>")

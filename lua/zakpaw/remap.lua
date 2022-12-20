-- basic normal
vim.keymap.set("n", "<leader>q", ":bd<cr>")
vim.keymap.set("n", "<leader>e", ":Ex<cr>")
vim.keymap.set("n", "<leader>w", ":topleft vs<cr>|:Ex<cr>")
vim.keymap.set("n", "<s-H>", "^")
vim.keymap.set("n", "<s-L>", "$")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "<leader>=", "<C-a>") -- increment number
vim.keymap.set("n", "<leader>-", "<C-x>") -- decrement number
vim.keymap.set("n", "<Tab>", ":bnext<cr>") -- next bufferrema
vim.keymap.set("n", "<S-Tab>", ":bprev<cr>") -- previous buffer

-- basic visual
vim.keymap.set("v", "<s-J>", ":m '>+1<CR>gv=gv") -- move line down
vim.keymap.set("v", "<s-K>", ":m '<-2<CR>gv=gv") -- move line up
vim.keymap.set("v", "<s-H>", "^")
vim.keymap.set("v", "<s-L>", "$")

-- telescope
vim.keymap.set("n", "<C-f>", ":Telescope find_files<cr>")
vim.keymap.set("n", "<C-s>", ":Telescope find_files hidden=true<cr>")
vim.keymap.set("n", "<C-g>", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<C-b>", ":Telescope git_branches theme=dropdown<cr>")
vim.keymap.set("n", "<C-p>", ":Telescope neoclip plus theme=dropdown initial_mode=normal<cr>")

-- lspconfig
vim.keymap.set("n", "gd", ":Telescope lsp_definitions theme=dropdown<cr>")
vim.keymap.set("n", "gD", ":Telescope lsp_references theme=dropdown<cr>")
vim.keymap.set("n", "K", ":lua vim.lsp.buf.hover()<cr>")

-- netrw
vim.keymap.set("n", "<nop>", "<buffer><Plug>NetrwRefresh") -- stop netrw from refreshing at c-l

-- other
vim.keymap.set("n", "<F5>", ":UndotreeToggle<cr>")
vim.keymap.set("n", "<C-e>", ":lua vim.diagnostic.open_float({'line'})<cr>")

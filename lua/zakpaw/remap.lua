-- basic normal
vim.keymap.set("n", "<leader>q", "<cmd>bd<cr>")
vim.keymap.set("n", "<leader>e", "<cmd>Ex<cr>")
vim.keymap.set("n", "<leader>w", "<cmd>topleft vs<cr>|<cmd>Ex<cr>")
vim.keymap.set("n", "<s-H>", "^")
vim.keymap.set("n", "<s-L>", "$")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "<leader>=", "<C-a>") -- increment number
vim.keymap.set("n", "<leader>-", "<C-x>") -- decrement number
vim.keymap.set("n", "<Tab>", "<cmd>bnext<cr>") -- next bufferrema
vim.keymap.set("n", "<S-Tab>", "<cmd>bprev<cr>") -- previous buffer

-- basic visual
vim.keymap.set("v", "<s-J>", "<cmd>m '>+1<cr>") -- move line down
vim.keymap.set("v", "<s-K>", "<cmd>m '<-2<cr>") -- move line up
vim.keymap.set("v", "<s-H>", "^")
vim.keymap.set("v", "<s-L>", "$")

-- telescope
vim.keymap.set("n", "<C-f>", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<C-s>", "<cmd>Telescope find_files hidden=true<cr>")
vim.keymap.set("n", "<C-g>", "<cmd>Telescope live_grep<cr>")
vim.keymap.set("n", "<C-b>", "<cmd>Telescope git_branches theme=dropdown<cr>")
vim.keymap.set("n", "<C-p>", "<cmd>Telescope neoclip plus theme=dropdown initial_mode=normal<cr>")

-- lspconfig
vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions theme=dropdown<cr>")
vim.keymap.set("n", "gD", "<cmd>Telescope lsp_references theme=dropdown<cr>")
vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>")

-- netrw
vim.keymap.set("n", "<nop>", "<buffer><Plug>NetrwRefresh") -- stop netrw from refreshing at c-l

-- other
vim.keymap.set("n", "<F5>", "<cmd>UndotreeToggle<cr>")
vim.keymap.set("n", "<C-e>", "<cmd>lua vim.diagnostic.open_float({'line'})<cr>")

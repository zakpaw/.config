local nnoremap = require("zakpaw.keymap").nnoremap

nnoremap("<leader>q", "<cmd>close<cr>")
nnoremap("<leader>e", "<cmd>topleft vs<cr>25<C-w>|<cmd>Ex<cr>")
nnoremap("<leader>o", "o<Esc>") -- nl without input

nnoremap("<leader>+", "<C-a>") -- increment number
nnoremap("<leader>-", "<C-x>") -- decrement number

-- telescope
nnoremap("<C-f>", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
nnoremap("<C-g>", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type

-- netrw
nnoremap("<nop>", "<buffer><Plug>NetrwRefresh") -- stop netrw from refreshing at c-l

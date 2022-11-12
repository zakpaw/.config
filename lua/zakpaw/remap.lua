local nnoremap = require("zakpaw.keymap").nnoremap

nnoremap("<leader>q", "<cmd>close<cr>")
nnoremap("<leader>o", "o<Esc>") -- nl without input

-- Telescope
nnoremap("<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
nnoremap("<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
nnoremap("<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
nnoremap("<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
nnoremap("<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

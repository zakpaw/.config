local telescope = require("telescope")
local actions = require("telescope.actions")
-- setup neoclip
require("neoclip").setup { keys = { telescope = { i = { paste_behind = '<nop>' } } } }

telescope.setup({
    defaults = {
        mappings = {
            i = {
                ["<esc>"] = actions.close, -- use single esc to close
                ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                ["<C-j>"] = actions.move_selection_next, -- move to next result
            },
        },
    },
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
        }
    }
})

telescope.load_extension("fzf")
telescope.load_extension("neoclip")

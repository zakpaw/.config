vim.cmd [[packadd packer.nvim]]

require("packer").startup(function()
    use "wbthomason/packer.nvim"
    
    use "nvim-treesitter/nvim-treesitter"
    require("nvim-treesitter.configs").setup {
        ensure_installed = { "c", "lua", "rust" },
        highlight = {
            enable = true,
        },
    }
    -- Themes
    use { "catppuccin/nvim", as = "catppuccin" }
    require("catppuccin").setup({
        flavour = "mocha",
        styles = {
            comments = { "italic" },
        }
    })
end)


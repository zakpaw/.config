-- ensure Packer is installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- automatically reload
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]])

-- install plugins
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    -- highlighting & formatting
    use "nvim-treesitter/nvim-treesitter"
    use "neovim/nvim-lspconfig"
    use "williamboman/mason.nvim"

    -- cmp plugins
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "saadparwaiz1/cmp_luasnip"

    -- snippets
    use "L3MON4D3/LuaSnip"
    use "rafamadriz/friendly-snippets"

    -- git
    use "tpope/vim-fugitive"
    use "lewis6991/gitsigns.nvim"

    -- telescope
    use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
    use {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        requires = { { "nvim-lua/plenary.nvim" } }
    }
    use "AckslD/nvim-neoclip.lua"

    -- other
    use "christoomey/vim-tmux-navigator"
    use "mbbill/undotree"
    use "hashivim/vim-terraform"
    use "airblade/vim-rooter"
    use "iamcco/markdown-preview.nvim"
    use "jpalardy/vim-slime"

    -- theme
    use { "catppuccin/nvim", as = "catppuccin" }
    use "kyazdani42/nvim-web-devicons"
    use {
      "nvim-lualine/lualine.nvim",
      requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }

    if packer_bootstrap then
        require('packer').sync()
    end
end)

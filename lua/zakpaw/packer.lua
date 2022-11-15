-- Ensure Packer is installed
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

-- Automatically reload
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]])

-- Install plugins
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"
    
    -- Highlighting
    use "nvim-treesitter/nvim-treesitter"   

    -- Git
    use "tpope/vim-fugitive"
    use "lewis6991/gitsigns.nvim"

    use "christoomey/vim-tmux-navigator"
    
    -- Telescope
    use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
    use { 
        "nvim-telescope/telescope.nvim", 
        branch = "0.1.x",
        requires = { { "nvim-lua/plenary.nvim" } }
    }

    -- Theme
    use { "catppuccin/nvim", as = "catppuccin" }

    if packer_bootstrap then
        require('packer').sync()
    end
end)

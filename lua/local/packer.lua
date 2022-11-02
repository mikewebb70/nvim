-- auto install packer plugin manager if not install
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

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost pluginsetup.lua source <afile> | PackerSync
    augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'rounded' })
      end,
      prompt_boarder = 'rounded' -- boarder style of prompt popups
    }
  }
)

return require('packer').startup(function(use)

  -- Essential plugins here
  use("wbthomason/packer.nvim") -- Have packer manage itself
  use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
  use("nvim-lua/plenary.nvim") -- Useful lua functions used ny lots of plugins
  use("nvim-tree/nvim-web-devicons") -- standard icon visual plugin used by many other plugins

  -- Color
  use("NvChad/nvim-colorizer.lua") -- visualize color as a block for color codes
  -- use "ziontee113/color-picker.nvim"
  use("nvim-colortils/colortils.nvim")

  -- lualine a nvim status line use({
  'nvim-lualine/lualine.nvim',
  requires = { 
    "nvim-tree/nvim-web-devicons", opt = true,
    "arkav/lualine-lsp-progress",
    }
  })
  
  -- Colorschemes
  use("lunarvim/onedarker.nvim")
  use("lunarvim/darkplus.nvim")
  use("folke/tokyonight.nvim")
  use("arcticicestudio/nord-vim")

  -- treesitter syntax hoghtlighting
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      require("nvim-treesitter.install").update({ with_sync = true})
    end,
  }) 

  -- file explorer
  use("nvim-tree/nvim-tree.lua")

  -- Git workflow
  use("lewis6991/gitsigns.nvim")

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)


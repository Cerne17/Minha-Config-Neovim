-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Everytime you add a new plugin, insert :so and :PackerSync to automatically download it.
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
	  "catppuccin/nvim", 
	  as = "catppuccin",
	  config = function()
		  vim.cmd('colorscheme catppuccin')
	  end
  }

  use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  -- Use treesitter playground in case of wanting to build a 
  -- neovim plugin
  -- use('nvim-treesitter/playground')

  use('ThePrimeagen/harpoon')

  use('mbbill/undotree')
  
  use('tpope/vim-fugitive')

  -- LSP
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment these if you want to manage LSP servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }

  use {
      'stevearc/oil.nvim',
      config = function() require('oil').setup() end
  }

  use ('github/copilot.vim')

  use ('windwp/windline.nvim')

  -- TODO: Learn about: https://github.com/rest-nvim/rest.nvim
  -- TODO: Learn about: https://github.com/norcalli/snippets.nvim


end)

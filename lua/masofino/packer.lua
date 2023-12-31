-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim',
	  tag = '0.1.3',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({ 
	'rose-pine/neovim',
	as = 'rose-pine'
  })

  use ({
	
	"EdenEast/nightfox.nvim",
	as = "nightfox"
	
--	config = function()
--		vim.cmd('colorscheme Carbonfox')
--	end

  })

  use { "catppuccin/nvim", as = "catppuccin", 

	config = function()
		vim.cmd('colorscheme catppuccin-mocha')
	end

  }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use ({
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment these if you want to manage LSP servers from neovim
		  -- {'williamboman/mason.nvim'},
		  -- {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'}
	  }
  })
end)

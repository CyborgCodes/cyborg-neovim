-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  --Telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'}, {'nvim-tree/nvim-web-devicons'}, {'BurntSushi/ripgrep'} }
  }
  --Lualine
  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  --LSP
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
      -- :Mason to install servers
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
    'akinsho/flutter-tools.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
  }

  use 'L3MON4D3/LuaSnip' -- Snippets
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}) --Treesitter
  use 'folke/zen-mode.nvim' --Zen Mode
  use 'windwp/nvim-ts-autotag' --Auto Tag
  --AutoPairs
  use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }
  use { "catppuccin/nvim", as = "catppuccin" } --Theme
  use 'folke/trouble.nvim' --Trouble 
  use 'lewis6991/gitsigns.nvim' --GitSigns
  use 'dinhhuy258/git.nvim' -- Git
  use 'numToStr/Comment.nvim' -- Comment
  use 'yamatsum/nvim-cursorline' --Cursor word & cursor line
end)

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	-- Using Packer:
	use 'Mofiqul/dracula.nvim'

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment the two plugins below if you want to manage the language servers from neovim
			{'williamboman/mason.nvim',
			opts = { ensure_installed = { "prettier" }}, 	
		},
			{'williamboman/mason-lspconfig.nvim'},

			{'neovim/nvim-lspconfig'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'hrsh7th/cmp-nvim-lua'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}
	-- for prettier formatter to work 
	use { 'mhartington/formatter.nvim' }

	-- for tabs at the top 
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'

	use 'nvim-tree/nvim-web-devicons'
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons'}
	}
	use 'tpope/vim-commentary'

	-- for auto closing brackets
	use {
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup {}
		end
	}

	-- for improving LSP experience
	use ({
		'nvimdev/lspsaga.nvim',
		after = 'nvim-lspconfig',
		config = function()
			require('lspsaga').setup({})
		end,
	})
	-- new theme
	use { "catppuccin/nvim", as = "catppuccin" }
	-- auto-dark-mode
	use { 'f-person/auto-dark-mode.nvim' }
	-- for buffer line
	use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
	-- for autoformatter
	use{"stevearc/conform.nvim"}
	-- practice vim motion
	use {'ThePrimeagen/vim-be-good'}
end)

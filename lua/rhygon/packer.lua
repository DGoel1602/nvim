-- Only rquired if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use 'nvim-treesitter/playground'
	use 'mbbill/undotree'
	use 'tpope/vim-fugitive'
	use {
		"hrsh7th/nvim-cmp",
		requires = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
			'hrsh7th/cmp-vsnip',
			'hrsh7th/vim-vsnip',
			'rafamadriz/friendly-snippets',
		}
	}
	use { 'mfussenegger/nvim-dap',
		requires = {
			'jay-babu/mason-nvim-dap.nvim',
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio"
		} }
	use("rose-pine/neovim")
	use { "catppuccin/nvim", as = "catppuccin" }
	use { "folke/tokyonight.nvim" }
	use "olimorris/onedarkpro.nvim"
	use "https://codeberg.org/jthvai/lavender.nvim"
	use("neovim/nvim-lspconfig")
	use("mason-org/mason.nvim")
	use("mason-org/mason-lspconfig.nvim")
	use('ThePrimeagen/vim-be-good')
	use 'm4xshen/autoclose.nvim'
end)

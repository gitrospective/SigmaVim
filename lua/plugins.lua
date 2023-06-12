-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]



return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	
	--Telescope a fuzzy finder
	use{
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                        , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	--Theme
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	})
	--TreeSitter
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	--UndoTree
	use('mbbill/undotree')
	--Terminal
	use {
		"NvChad/nvterm",
		config = function()
			require("nvterm").setup()
		end
	}
	--NvTree
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
		config = function()
			require("nvim-tree").setup {}
		end
	}
	use "lukas-reineke/indent-blankline.nvim"
	
	use "vim-airline/vim-airline"
	use{
		"ThePrimeagen/harpoon",
	}
	use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
	use "nvimdev/dashboard-nvim"
	use {
		'VonHeikemen/lsp-zero.nvim',	
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
			'williamboman/mason.nvim',
			run = function()
				pcall(vim.cmd, 'MasonUpdate')
			end,
		},
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},     -- Required
		{'hrsh7th/cmp-nvim-lsp'}, -- Required
		{'L3MON4D3/LuaSnip'},     -- Required
		},
	}
	-- install without yarn or npm
	use({
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
	})

	use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
end)



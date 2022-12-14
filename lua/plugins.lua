-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- colorscheme
  use({
   'glepnir/zephyr-nvim',
    requires = { 'nvim-treesitter/nvim-treesitter', opt = true },
  })
  
  -- statusline
  -- use {'ojroques/nvim-hardline'}
  use 'beauwilliams/statusline.lua'
  -- telescope.nvim
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }
  use({
      "glepnir/lspsaga.nvim",
      branch = "main",
      config = function()
          local saga = require("lspsaga")

          saga.init_lsp_saga({
              -- your configuration
          })
      end,
  })
  use {
      "williamboman/nvim-lsp-installer",
      "neovim/nvim-lspconfig",
  }
  -- for lsp in statusline
  
  use 'nvim-lua/lsp-status.nvim'

  -- completion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lsp-document-symbol'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use {'petertriho/cmp-git', requires = 'nvim-lua/plenary.nvim'}
  use 'davidsierradz/cmp-conventionalcommits'
  use 'andersevenrud/cmp-tmux'
  use 'onsails/lspkind.nvim'
  -- snippets
  use 'rafamadriz/friendly-snippets'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
end)

local status, packer = pcall(require, 'packer')

if (not status) then
  print('Packer is not installed')
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'ellisonleao/gruvbox.nvim'
  }
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'onsails/lspkind.nvim' -- VSCode like pictograms
  use 'hrsh7th/cmp-buffer' -- Buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- Source for NeoVim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completition
  use 'neovim/nvim-lspconfig' -- LSP
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
end)

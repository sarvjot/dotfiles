-- if packer is not installed, bootstrap it
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  is_bootstrap = true
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  vim.cmd [[packadd packer.nvim]]
end

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'neovim/nvim-lspconfig',                                    -- Configure LSPs
    requires = {
      'williamboman/mason.nvim',                                -- Install LSPs
      'williamboman/mason-lspconfig.nvim',                      -- Bridge gap between mason and lspconfig
      'j-hui/fidget.nvim',                                      -- Useful status updates for LSPs
      'hrsh7th/cmp-nvim-lsp',
    },
    config = function() require('myconfig.lspconfig').setup() end,
  }

  use {
    'hrsh7th/nvim-cmp',                                         -- Autocompletion 
    requires = {                                                -- Autocompletion sources 
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip'
    },
    config = function() require('myconfig.cmp').setup() end,
  }

  use {
    'nvim-treesitter/nvim-treesitter',                          -- Highlighting, Navigation and more
    run = require('myconfig.nvim-treesitter').run,
    config = require('myconfig.nvim-treesitter').setup,
  }

  use{
    "nvim-treesitter/nvim-treesitter-textobjects",
    after = "nvim-treesitter",
    requires = "nvim-treesitter/nvim-treesitter",
  }

  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'

  use {
    'lewis6991/gitsigns.nvim',
    config = require('myconfig.gitsigns').setup,
  }

  use {
    "https://gitlab.com/__tpb/monokai-pro.nvim",
    config = require('myconfig.monokaipro').setup,
  }

  use {
    'nvim-lualine/lualine.nvim',
    config = require('myconfig.lualine').setup,
  }

  use {
    'lukas-reineke/indent-blankline.nvim',                      -- Add indentation guides even on blank lines
    config = require('myconfig.indent-blankline').setup,
  }

  use {
    'numToStr/Comment.nvim',                                    -- "gc" to comment visual regions/lines
    config = require('myconfig.comment').setup,
  }

  use 'tpope/vim-sleuth'                                        -- Detect tabstop and shiftwidth automatically

  use {
    'github/copilot.vim',
    config = require('myconfig.copilot').setup,
  }

  use {
    'nvim-telescope/telescope.nvim',                            -- Fuzzy Finder
    branch = '0.1.x',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = require('myconfig.telescope').setup,
  }

  use {
    'nvim-telescope/telescope-fzf-native.nvim',                 -- Fuzzy Finder Algorithm 
    run = 'make',                                               -- Requires local dependencies to be built
    cond = vim.fn.executable 'make' == 1,                       -- Only load if `make` is available
    config = require('myconfig.telescope-fzf-native').setup,
  }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',                            -- optional, for file icons
    },
    tag = 'nightly',                                            -- optional, updated every week. (see issue #1193)
    config = require('myconfig.nvim-tree').setup,
  }

  use {
    "akinsho/toggleterm.nvim",
    tag = '*',
    config = require('myconfig.toggleterm').setup,
  }

  use 'searleser97/cpbooster.vim'

  use({
    "L3MON4D3/LuaSnip",
    tag = "v<CurrentMajor>.*",
    run = "make install_jsregexp",
    config = require('myconfig.luasnip').setup,
  })

  -- Add custom plugins from lua/custom/plugins.lua
  local has_plugins, plugins = pcall(require, 'custom.plugins')
  if has_plugins then
    plugins(use)
  end

  if is_bootstrap then
    require('packer').sync()
  end
end)

-- Source and re-compile packer upon save
local packer_group = vim.api.nvim_create_augroup('Packer', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', {
  command = 'source <afile> | PackerCompile',
  group = packer_group,
  pattern = '**/nvim/*.lua',
})

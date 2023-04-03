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
    --[[
	config = function()
		  vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
		  vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
		  vim.keymap.set('n', '<leader>f', vim.diagnostic.open_float)
		  vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

		  local on_attach = function(_, bufnr)
			local nmap = function(keys, func, desc)
			  if desc then
				desc = 'LSP: ' .. desc
			  end
			  vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
			end

			nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
			nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
			nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
			nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
			nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
			nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
			nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
			nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')
			nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
			nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')
			nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
			nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
			nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
			nmap('<leader>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, '[W]orkspace [L]ist Folders')

			vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
			  if vim.lsp.buf.format then
				vim.lsp.buf.format()
			  elseif vim.lsp.buf.formatting then
				vim.lsp.buf.formatting()
			  end
			end, { desc = 'Format current buffer with LSP' })
		  end

		  require('fidget').setup()
		  require('mason').setup()

		  local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver', 'lua_ls', 'gopls' }
		  require('mason-lspconfig').setup {
			ensure_installed = servers,
		  }

		  local capabilities = vim.lsp.protocol.make_client_capabilities()
		  capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

		  for _, lsp in ipairs(servers) do
			local config = {
			  on_attach = on_attach,
			  capabilities = capabilities,
			}

			if(lsp == 'lua_ls') then
			  config.settings = {
				Lua = {
				  diagnostics = {
					globals = { 'vim' },
				  },
				  workspace = { checkThirdParty = false },
				  telemetry = { enable = false },
				}
			  }
			end

			require('lspconfig')[lsp].setup(config)
		  end

		print("testing")
	end
	--]]
  }

--[[
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
	--]]

--[[
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

  use{
    'projekt0n/github-nvim-theme',
    branch = '0.0.x',
    config = require('myconfig.github-nvim-theme').setup,
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
--]]
end)

-- Source and re-compile packer upon save
local packer_group = vim.api.nvim_create_augroup('Packer', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', {
  command = 'source <afile> | PackerCompile',
  group = packer_group,
  pattern = '**/nvim/*.lua',
})

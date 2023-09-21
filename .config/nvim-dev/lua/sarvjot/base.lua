local oset = vim.o

oset.hlsearch = false                 -- Set highlight on search
oset.breakindent = true               -- Enable break indent
oset.mouse = 'a'                      -- Enable mouse mode
oset.undofile = true
oset.ignorecase = true                -- Case insensitive searching UNLESS /C or capital in search
oset.smartcase = true
oset.updatetime = 250                 -- Decrease update time
oset.termguicolors = true
oset.completeopt = 'menuone,noselect' -- Set completeopt to have a better completion experience
oset.clipboard = 'unnamedplus'        -- Attach neovim register to system clipboard
oset.splitbelow = true                -- Force Split Below
oset.splitright = true                -- Force Split Right

-- Tab settings
oset.tabstop = 2     -- number of visual spaces per TAB
oset.shiftwidth = 2  -- number of spaces in a indent
oset.softtabstop = 2 -- makes editing easy, with <TAB> and <BS> deleting the correct number of spaces

-- global status line for all splits
oset.laststatus = 3

----------------------------------------------------------------

local woset = vim.wo

woset.number = true      -- Make line numbers default
woset.signcolumn = 'yes' -- Arrange space for signs (e.g. breakpoints)

----------------------------------------------------------------

local gset = vim.g

gset.loaded_netrw = 1 -- disable netrw at the very start of your init.lua (strongly advised)
gset.loaded_netrwPlugin = 1

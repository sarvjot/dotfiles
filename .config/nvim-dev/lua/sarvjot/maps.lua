-- NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
local gset = vim.g

gset.mapleader = ' '
gset.maplocalleader = ' '

local function custom_map(mode, lhs, rhs, opts)
  vim.keymap.set(mode, lhs, rhs, vim.tbl_extend('force', { noremap = true, silent = true }, opts or {}))
end

custom_map({ 'n', 'v' }, "<Space>", "<Nop>")    -- disable space as leader
custom_map('n', "<C-a>", ":%y+<Enter>")         -- copy all to clipboard

-- split movement maps
custom_map('n', "<C-J>", "<C-W><C-J>")
custom_map('n', "<C-K>", "<C-W><C-K>")
custom_map('n', "<C-L>", "<C-W><C-L>")
custom_map('n', "<C-H>", "<C-W><C-H>")

-- split resize maps
custom_map('n', "<A-S-Left>", "<C-W><")
custom_map('n', "<A-S-Right>", "<C-W>>")
custom_map('n', "<A-S-Up>", "<C-W>-")
custom_map('n', "<A-S-Down>", "<C-W>+")

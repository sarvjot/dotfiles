local M = {}

function M.setup()
  require("toggleterm").setup {
    open_mapping = [[<c-\>]],
    direction = 'float',
    start_in_insert = true,
    terminal_mappings = true,
    float_opts = {
      border = 'curved',
      width = 126,
    },
  }

  -- better navigation for terminals
  function _G.set_terminal_keymaps()
    local opts = { buffer = 0 }
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
    vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
    vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
    vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  end

  -- set above keymaps whenever a terminal buffer is opened
  vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
end

return M

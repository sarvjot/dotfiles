local M = {}

function M.setup()
  require('indent_blankline').setup {
    char = '┊',
    show_trailing_blankline_indent = false,
  }
end

return M

local M = {}

function M.setup()
  require('lualine').setup {
    options = {
      icons_enabled = false,
      theme = 'catppuccin',
      component_separators = '|',
      section_separators = '',
      globalstatus = true,
    },
  }
end

return M

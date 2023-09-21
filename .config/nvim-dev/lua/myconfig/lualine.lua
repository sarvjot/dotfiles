local M = {}

function M.setup()
  require('lualine').setup {
    options = {
      icons_enabled = false,
      theme = 'moonfly',
      component_separators = '|',
      section_separators = '',
      globalstatus = true,
    },
  }
end

return M

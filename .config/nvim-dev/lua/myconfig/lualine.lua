local M = {}

function M.setup()
  require('lualine').setup {
    options = {
      icons_enabled = false,
      theme = 'github_dark_default',
      component_separators = '|',
      section_separators = '',
      globalstatus = true,
    },
  }
end

return M

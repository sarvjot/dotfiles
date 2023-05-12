local M = {}

function M.setup()
  require('lualine').setup {
    options = {
      icons_enabled = false,
      theme = 'monokaipro',
      component_separators = '|',
      section_separators = '',
      globalstatus = true,
    },
  }
end

return M

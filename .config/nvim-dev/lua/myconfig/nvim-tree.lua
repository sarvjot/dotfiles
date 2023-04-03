local M = {}

function M.setup()
  require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
      adaptive_size = true,
      mappings = {
      },
    },
    renderer = {
      group_empty = true,
    },
  })

  vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<Enter>', { noremap = true, silent = true })
end

return M

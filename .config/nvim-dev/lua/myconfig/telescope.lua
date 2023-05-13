local M = {}

function M.setup()
  local actions = require("telescope.actions")
  require('telescope').setup {
    defaults = {
      mappings = {
        i = {
          ['<C-u>'] = false,
          ['<C-d>'] = false,
          ["<esc>"] = actions.close,
        },
      },
    },
  }

  local function telescope_map(key, action, desc)
    vim.keymap.set('n', key, action, { desc = desc })
  end

  local function search_buffer_action()
    require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
      previewer = false,
    })
  end

  local function search_neovim_action()
    require('telescope.builtin').find_files({ cwd = '~/.config/nvim' })
  end

  telescope_map('<leader><space>', require('telescope.builtin').buffers, '[ ] Find existing buffers')
  telescope_map('<leader>/', search_buffer_action, '[/] Fuzzy search in current buffer]')
  telescope_map('<leader>sn', search_neovim_action, '[S]earch [N]eovim')
  telescope_map('<leader>sf', require('telescope.builtin').find_files, '[S]earch [F]iles')
  telescope_map('<leader>sg', require('telescope.builtin').live_grep, '[S]earch by [G]rep')
end

return M

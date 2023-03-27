local M = {}

function M.setup()
  require("luasnip.loaders.from_vscode").load({ paths = { "~/.config/nvim/my_snippets" } })
end

return M

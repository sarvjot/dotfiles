local M = {}

function M.setup()
  vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
  vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
  vim.keymap.set('n', '<leader>f', vim.diagnostic.open_float)
  vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

  local on_attach = function(_, bufnr)
    local nmap = function(keys, func, desc)
      if desc then
        desc = 'LSP: ' .. desc
      end
      vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
    end

    nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
    nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
    nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
    nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
    nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
    nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')

    nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
    nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
    nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
    nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
    nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')
    nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
    nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
    nmap('<leader>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end,
      '[W]orkspace [L]ist Folders')
  end

  require('fidget').setup()
  require('mason').setup()

  local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver', 'lua_ls', 'gopls', 'html' }
  require('mason-lspconfig').setup {
    ensure_installed = servers,
  }

  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

  for _, lsp in ipairs(servers) do
    local config = {
      on_attach = on_attach,
      capabilities = capabilities,
    }

    if (lsp == 'lua_ls') then
      config.settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' },
          },
          workspace = { checkThirdParty = false },
          telemetry = { enable = false },
        }
      }
    end

    require('lspconfig')[lsp].setup(config)
  end
end

return M

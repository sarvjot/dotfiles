-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/sarvjot/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/sarvjot/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/sarvjot/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/sarvjot/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/sarvjot/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["fidget.nvim"] = {
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\ns\0\3\n\1\b\0\17\15\0\2\0X\3\3€'\3\0\0\18\4\2\0&\2\4\0036\3\1\0009\3\2\0039\3\3\3'\5\4\0\18\6\0\0\18\a\1\0005\b\5\0-\t\0\0=\t\6\b=\2\a\bB\3\5\1K\0\1\0\1À\tdesc\vbuffer\1\0\0\6n\bset\vkeymap\bvim\nLSP: d\0\0\6\0\6\0\v6\0\0\0006\2\1\0009\2\2\0026\4\1\0009\4\3\0049\4\4\0049\4\5\4B\4\1\0A\2\0\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim\nprint…\1\0\1\3\0\5\0\0246\1\0\0009\1\1\0019\1\2\0019\1\3\1\15\0\1\0X\2\6€6\1\0\0009\1\1\0019\1\2\0019\1\3\1B\1\1\1X\1\v€6\1\0\0009\1\1\0019\1\2\0019\1\4\1\15\0\1\0X\2\5€6\1\0\0009\1\1\0019\1\2\0019\1\4\1B\1\1\1K\0\1\0\15formatting\vformat\bbuf\blsp\bvimÀ\t\1\2\t\0005\0x3\2\0\0\18\3\2\0'\5\1\0006\6\2\0009\6\3\0069\6\4\0069\6\5\6'\a\6\0B\3\4\1\18\3\2\0'\5\a\0006\6\2\0009\6\3\0069\6\4\0069\6\b\6'\a\t\0B\3\4\1\18\3\2\0'\5\n\0006\6\2\0009\6\3\0069\6\4\0069\6\v\6'\a\f\0B\3\4\1\18\3\2\0'\5\r\0006\6\14\0'\b\15\0B\6\2\0029\6\16\6'\a\17\0B\3\4\1\18\3\2\0'\5\18\0006\6\2\0009\6\3\0069\6\4\0069\6\19\6'\a\20\0B\3\4\1\18\3\2\0'\5\21\0006\6\2\0009\6\3\0069\6\4\0069\6\22\6'\a\23\0B\3\4\1\18\3\2\0'\5\24\0006\6\14\0'\b\15\0B\6\2\0029\6\25\6'\a\26\0B\3\4\1\18\3\2\0'\5\27\0006\6\14\0'\b\15\0B\6\2\0029\6\28\6'\a\29\0B\3\4\1\18\3\2\0'\5\30\0006\6\2\0009\6\3\0069\6\4\0069\6\31\6'\a \0B\3\4\1\18\3\2\0'\5!\0006\6\2\0009\6\3\0069\6\4\0069\6\"\6'\a#\0B\3\4\1\18\3\2\0'\5$\0006\6\2\0009\6\3\0069\6\4\0069\6%\6'\a&\0B\3\4\1\18\3\2\0'\5'\0006\6\2\0009\6\3\0069\6\4\0069\6(\6'\a)\0B\3\4\1\18\3\2\0'\5*\0006\6\2\0009\6\3\0069\6\4\0069\6+\6'\a,\0B\3\4\1\18\3\2\0'\5-\0003\6.\0'\a/\0B\3\4\0016\3\2\0009\0030\0039\0031\3\18\5\1\0'\0062\0003\a3\0005\b4\0B\3\5\0012\0\0€K\0\1\0\1\0\1\tdesc#Format current buffer with LSP\0\vFormat!nvim_buf_create_user_command\bapi\31[W]orkspace [L]ist Folders\0\15<leader>wl [W]orkspace [R]emove Folder\28remove_workspace_folder\15<leader>wr\29[W]orkspace [A]dd Folder\25add_workspace_folder\15<leader>wa\25[G]oto [D]eclaration\16declaration\agD\28Signature Documentation\19signature_help\n<C-k>\24Hover Documentation\nhover\6K\26[W]orkspace [S]ymbols\"lsp_dynamic_workspace_symbols\15<leader>ws\25[D]ocument [S]ymbols\25lsp_document_symbols\15<leader>ds\22Type [D]efinition\20type_definition\14<leader>D\28[G]oto [I]mplementation\19implementation\agI\24[G]oto [R]eferences\19lsp_references\22telescope.builtin\frequire\agr\24[G]oto [D]efinition\15definition\agd\20[C]ode [A]ction\16code_action\15<leader>ca\15[R]e[n]ame\vrename\bbuf\blsp\bvim\15<leader>rn\0ß\6\1\0\r\0/\0e6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\0\0009\4\5\0049\4\6\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0006\4\0\0009\4\5\0049\4\b\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\t\0006\4\0\0009\4\5\0049\4\n\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\v\0006\4\0\0009\4\5\0049\4\f\4B\0\4\0013\0\r\0006\1\14\0'\3\15\0B\1\2\0029\1\16\1B\1\1\0016\1\14\0'\3\17\0B\1\2\0029\1\16\1B\1\1\0015\1\18\0006\2\14\0'\4\19\0B\2\2\0029\2\16\0025\4\20\0=\1\21\4B\2\2\0016\2\0\0009\2\22\0029\2\23\0029\2\24\2B\2\1\0026\3\14\0'\5\25\0B\3\2\0029\3\26\3\18\5\2\0B\3\2\2\18\2\3\0006\3\27\0\18\5\1\0B\3\2\4X\6\24€5\b\28\0=\0\29\b=\2\30\b\a\a\31\0X\t\f€5\t*\0005\n$\0005\v\"\0005\f!\0=\f#\v=\v%\n5\v&\0=\v'\n5\v(\0=\v)\n=\n+\t=\t \b6\t\14\0'\v,\0B\t\2\0028\t\a\t9\t\16\t\18\v\b\0B\t\2\1E\6\3\3R\6æ\1276\3-\0'\5.\0B\3\2\1K\0\1\0\ftesting\nprint\14lspconfig\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\1\0\1\20checkThirdParty\1\16diagnostics\1\0\0\fglobals\1\0\0\1\2\0\0\bvim\rsettings\vlua_ls\17capabilities\14on_attach\1\0\0\vipairs\25default_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\21ensure_installed\1\0\0\20mason-lspconfig\1\a\0\0\vclangd\18rust_analyzer\fpyright\rtsserver\vlua_ls\ngopls\nmason\nsetup\vfidget\frequire\0\15setloclist\14<leader>q\15open_float\14<leader>f\14goto_next\a]d\14goto_prev\15diagnostic\a[d\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\ns\0\3\n\1\b\0\17\15\0\2\0X\3\3€'\3\0\0\18\4\2\0&\2\4\0036\3\1\0009\3\2\0039\3\3\3'\5\4\0\18\6\0\0\18\a\1\0005\b\5\0-\t\0\0=\t\6\b=\2\a\bB\3\5\1K\0\1\0\1À\tdesc\vbuffer\1\0\0\6n\bset\vkeymap\bvim\nLSP: d\0\0\6\0\6\0\v6\0\0\0006\2\1\0009\2\2\0026\4\1\0009\4\3\0049\4\4\0049\4\5\4B\4\1\0A\2\0\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim\nprint…\1\0\1\3\0\5\0\0246\1\0\0009\1\1\0019\1\2\0019\1\3\1\15\0\1\0X\2\6€6\1\0\0009\1\1\0019\1\2\0019\1\3\1B\1\1\1X\1\v€6\1\0\0009\1\1\0019\1\2\0019\1\4\1\15\0\1\0X\2\5€6\1\0\0009\1\1\0019\1\2\0019\1\4\1B\1\1\1K\0\1\0\15formatting\vformat\bbuf\blsp\bvimÀ\t\1\2\t\0005\0x3\2\0\0\18\3\2\0'\5\1\0006\6\2\0009\6\3\0069\6\4\0069\6\5\6'\a\6\0B\3\4\1\18\3\2\0'\5\a\0006\6\2\0009\6\3\0069\6\4\0069\6\b\6'\a\t\0B\3\4\1\18\3\2\0'\5\n\0006\6\2\0009\6\3\0069\6\4\0069\6\v\6'\a\f\0B\3\4\1\18\3\2\0'\5\r\0006\6\14\0'\b\15\0B\6\2\0029\6\16\6'\a\17\0B\3\4\1\18\3\2\0'\5\18\0006\6\2\0009\6\3\0069\6\4\0069\6\19\6'\a\20\0B\3\4\1\18\3\2\0'\5\21\0006\6\2\0009\6\3\0069\6\4\0069\6\22\6'\a\23\0B\3\4\1\18\3\2\0'\5\24\0006\6\14\0'\b\15\0B\6\2\0029\6\25\6'\a\26\0B\3\4\1\18\3\2\0'\5\27\0006\6\14\0'\b\15\0B\6\2\0029\6\28\6'\a\29\0B\3\4\1\18\3\2\0'\5\30\0006\6\2\0009\6\3\0069\6\4\0069\6\31\6'\a \0B\3\4\1\18\3\2\0'\5!\0006\6\2\0009\6\3\0069\6\4\0069\6\"\6'\a#\0B\3\4\1\18\3\2\0'\5$\0006\6\2\0009\6\3\0069\6\4\0069\6%\6'\a&\0B\3\4\1\18\3\2\0'\5'\0006\6\2\0009\6\3\0069\6\4\0069\6(\6'\a)\0B\3\4\1\18\3\2\0'\5*\0006\6\2\0009\6\3\0069\6\4\0069\6+\6'\a,\0B\3\4\1\18\3\2\0'\5-\0003\6.\0'\a/\0B\3\4\0016\3\2\0009\0030\0039\0031\3\18\5\1\0'\0062\0003\a3\0005\b4\0B\3\5\0012\0\0€K\0\1\0\1\0\1\tdesc#Format current buffer with LSP\0\vFormat!nvim_buf_create_user_command\bapi\31[W]orkspace [L]ist Folders\0\15<leader>wl [W]orkspace [R]emove Folder\28remove_workspace_folder\15<leader>wr\29[W]orkspace [A]dd Folder\25add_workspace_folder\15<leader>wa\25[G]oto [D]eclaration\16declaration\agD\28Signature Documentation\19signature_help\n<C-k>\24Hover Documentation\nhover\6K\26[W]orkspace [S]ymbols\"lsp_dynamic_workspace_symbols\15<leader>ws\25[D]ocument [S]ymbols\25lsp_document_symbols\15<leader>ds\22Type [D]efinition\20type_definition\14<leader>D\28[G]oto [I]mplementation\19implementation\agI\24[G]oto [R]eferences\19lsp_references\22telescope.builtin\frequire\agr\24[G]oto [D]efinition\15definition\agd\20[C]ode [A]ction\16code_action\15<leader>ca\15[R]e[n]ame\vrename\bbuf\blsp\bvim\15<leader>rn\0ß\6\1\0\r\0/\0e6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\0\0009\4\5\0049\4\6\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0006\4\0\0009\4\5\0049\4\b\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\t\0006\4\0\0009\4\5\0049\4\n\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\v\0006\4\0\0009\4\5\0049\4\f\4B\0\4\0013\0\r\0006\1\14\0'\3\15\0B\1\2\0029\1\16\1B\1\1\0016\1\14\0'\3\17\0B\1\2\0029\1\16\1B\1\1\0015\1\18\0006\2\14\0'\4\19\0B\2\2\0029\2\16\0025\4\20\0=\1\21\4B\2\2\0016\2\0\0009\2\22\0029\2\23\0029\2\24\2B\2\1\0026\3\14\0'\5\25\0B\3\2\0029\3\26\3\18\5\2\0B\3\2\2\18\2\3\0006\3\27\0\18\5\1\0B\3\2\4X\6\24€5\b\28\0=\0\29\b=\2\30\b\a\a\31\0X\t\f€5\t*\0005\n$\0005\v\"\0005\f!\0=\f#\v=\v%\n5\v&\0=\v'\n5\v(\0=\v)\n=\n+\t=\t \b6\t\14\0'\v,\0B\t\2\0028\t\a\t9\t\16\t\18\v\b\0B\t\2\1E\6\3\3R\6æ\1276\3-\0'\5.\0B\3\2\1K\0\1\0\ftesting\nprint\14lspconfig\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\1\0\1\20checkThirdParty\1\16diagnostics\1\0\0\fglobals\1\0\0\1\2\0\0\bvim\rsettings\vlua_ls\17capabilities\14on_attach\1\0\0\vipairs\25default_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\21ensure_installed\1\0\0\20mason-lspconfig\1\a\0\0\vclangd\18rust_analyzer\fpyright\rtsserver\vlua_ls\ngopls\nmason\nsetup\vfidget\frequire\0\15setloclist\14<leader>q\15open_float\14<leader>f\14goto_next\a]d\14goto_prev\15diagnostic\a[d\6n\bset\vkeymap\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end

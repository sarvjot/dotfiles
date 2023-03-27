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
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\n|\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\npaths\1\0\0\1\2\0\0\31~/.config/nvim/my_snippets\tload luasnip.loaders.from_vscode\frequire\0" },
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["copilot.vim"] = {
    config = { "\27LJ\2\n€\1\0\0\2\0\6\0\r6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0K\0\1\0\5\25copilot_tab_fallback\26copilot_assume_mapped\23copilot_no_tab_map\6g\bvim\0" },
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["cpbooster.vim"] = {
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/cpbooster.vim",
    url = "https://github.com/searleser97/cpbooster.vim"
  },
  ["fidget.nvim"] = {
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["github-nvim-theme"] = {
    config = { "\27LJ\2\n¨\1\0\1\4\0\n\0\f5\1\5\0005\2\1\0009\3\0\0=\3\2\0029\3\3\0=\3\4\2=\2\6\0015\2\a\0=\2\b\0014\2\0\0=\2\t\1L\1\2\0\fTSField\19DiagnosticHint\1\0\1\tlink\30LspDiagnosticsDefaultHint\fhtmlTag\1\0\0\asp\thint\afg\1\0\2\abg\f#282c34\nstyle\14underline\bredâ\1\1\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0023\3\b\0=\3\t\2B\0\2\1K\0\1\0\14overrides\0\vcolors\1\0\2\nerror\f#ff0000\thint\vorange\rsidebars\1\5\0\0\aqf\15vista_kind\rterminal\vpacker\1\0\2\16theme_style\17dark_default\19function_style\vitalic\nsetup\17github-theme\frequire\0" },
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/github-nvim-theme",
    url = "https://github.com/projekt0n/github-nvim-theme"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nÓ\1\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\1\ttext\6~\14topdelete\1\0\1\ttext\bâ€¾\vdelete\1\0\1\ttext\6_\vchange\1\0\1\ttext\6~\badd\1\0\0\1\0\1\ttext\6+\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\ne\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1#show_trailing_blankline_indent\1\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n±\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\0\1\0\5\18icons_enabled\1\17globalstatus\2\23section_separators\5\25component_separators\6|\ntheme\24github_dark_default\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
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
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\1À\tbody\15lsp_expand–\1\0\1\a\1\t\0\21-\1\0\0009\1\0\0019\1\1\1B\1\1\0016\1\2\0009\1\3\0019\1\4\1B\1\1\2\6\1\5\0X\2\b€6\2\2\0009\2\6\0029\2\a\2\18\4\1\0'\5\b\0+\6\2\0B\2\4\1X\2\2€\18\2\0\0B\2\1\1K\0\1\0\0À\6i\18nvim_feedkeys\bapi\5\19copilot#Accept\afn\bvim\nabort\fmappingš\1\0\1\3\2\4\0\21-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\v€-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4€-\1\1\0009\1\3\1B\1\1\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\0À\1À\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleŽ\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\r€-\1\1\0009\1\2\1)\3ÿÿB\1\2\2\15\0\1\0X\2\5€-\1\1\0009\1\3\1)\3ÿÿB\1\2\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\0À\1À\tjump\rjumpable\21select_prev_item\fvisible•\4\1\0\f\0$\0A6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0049\5\t\0009\5\n\0059\5\v\0055\a\r\0009\b\t\0009\b\f\b)\nüÿB\b\2\2=\b\14\a9\b\t\0009\b\f\b)\n\4\0B\b\2\2=\b\15\a9\b\t\0009\b\16\bB\b\1\2=\b\17\a9\b\t\0009\b\18\b5\n\21\0009\v\19\0009\v\20\v=\v\22\nB\b\2\2=\b\23\a9\b\t\0003\n\24\0B\b\2\2=\b\25\a9\b\t\0003\n\26\0005\v\27\0B\b\3\2=\b\28\a9\b\t\0003\n\29\0005\v\30\0B\b\3\2=\b\31\aB\5\2\2=\5\t\0044\5\4\0005\6 \0>\6\1\0055\6!\0>\6\2\0055\6\"\0>\6\3\5=\5#\4B\2\2\0012\0\0€K\0\1\0\fsources\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\n<C-e>\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\14<C-Space>\rcomplete\n<C-f>\n<C-d>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\fluasnip\bcmp\frequire\0" },
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\ns\0\3\n\1\b\0\17\15\0\2\0X\3\3€'\3\0\0\18\4\2\0&\2\4\0036\3\1\0009\3\2\0039\3\3\3'\5\4\0\18\6\0\0\18\a\1\0005\b\5\0-\t\0\0=\t\6\b=\2\a\bB\3\5\1K\0\1\0\1À\tdesc\vbuffer\1\0\0\6n\bset\vkeymap\bvim\nLSP: d\0\0\6\0\6\0\v6\0\0\0006\2\1\0009\2\2\0026\4\1\0009\4\3\0049\4\4\0049\4\5\4B\4\1\0A\2\0\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim\nprint…\1\0\1\3\0\5\0\0246\1\0\0009\1\1\0019\1\2\0019\1\3\1\15\0\1\0X\2\6€6\1\0\0009\1\1\0019\1\2\0019\1\3\1B\1\1\1X\1\v€6\1\0\0009\1\1\0019\1\2\0019\1\4\1\15\0\1\0X\2\5€6\1\0\0009\1\1\0019\1\2\0019\1\4\1B\1\1\1K\0\1\0\15formatting\vformat\bbuf\blsp\bvimÀ\t\1\2\t\0005\0x3\2\0\0\18\3\2\0'\5\1\0006\6\2\0009\6\3\0069\6\4\0069\6\5\6'\a\6\0B\3\4\1\18\3\2\0'\5\a\0006\6\2\0009\6\3\0069\6\4\0069\6\b\6'\a\t\0B\3\4\1\18\3\2\0'\5\n\0006\6\2\0009\6\3\0069\6\4\0069\6\v\6'\a\f\0B\3\4\1\18\3\2\0'\5\r\0006\6\14\0'\b\15\0B\6\2\0029\6\16\6'\a\17\0B\3\4\1\18\3\2\0'\5\18\0006\6\2\0009\6\3\0069\6\4\0069\6\19\6'\a\20\0B\3\4\1\18\3\2\0'\5\21\0006\6\2\0009\6\3\0069\6\4\0069\6\22\6'\a\23\0B\3\4\1\18\3\2\0'\5\24\0006\6\14\0'\b\15\0B\6\2\0029\6\25\6'\a\26\0B\3\4\1\18\3\2\0'\5\27\0006\6\14\0'\b\15\0B\6\2\0029\6\28\6'\a\29\0B\3\4\1\18\3\2\0'\5\30\0006\6\2\0009\6\3\0069\6\4\0069\6\31\6'\a \0B\3\4\1\18\3\2\0'\5!\0006\6\2\0009\6\3\0069\6\4\0069\6\"\6'\a#\0B\3\4\1\18\3\2\0'\5$\0006\6\2\0009\6\3\0069\6\4\0069\6%\6'\a&\0B\3\4\1\18\3\2\0'\5'\0006\6\2\0009\6\3\0069\6\4\0069\6(\6'\a)\0B\3\4\1\18\3\2\0'\5*\0006\6\2\0009\6\3\0069\6\4\0069\6+\6'\a,\0B\3\4\1\18\3\2\0'\5-\0003\6.\0'\a/\0B\3\4\0016\3\2\0009\0030\0039\0031\3\18\5\1\0'\0062\0003\a3\0005\b4\0B\3\5\0012\0\0€K\0\1\0\1\0\1\tdesc#Format current buffer with LSP\0\vFormat!nvim_buf_create_user_command\bapi\31[W]orkspace [L]ist Folders\0\15<leader>wl [W]orkspace [R]emove Folder\28remove_workspace_folder\15<leader>wr\29[W]orkspace [A]dd Folder\25add_workspace_folder\15<leader>wa\25[G]oto [D]eclaration\16declaration\agD\28Signature Documentation\19signature_help\n<C-k>\24Hover Documentation\nhover\6K\26[W]orkspace [S]ymbols\"lsp_dynamic_workspace_symbols\15<leader>ws\25[D]ocument [S]ymbols\25lsp_document_symbols\15<leader>ds\22Type [D]efinition\20type_definition\14<leader>D\28[G]oto [I]mplementation\19implementation\agI\24[G]oto [R]eferences\19lsp_references\22telescope.builtin\frequire\agr\24[G]oto [D]efinition\15definition\agd\20[C]ode [A]ction\16code_action\15<leader>ca\15[R]e[n]ame\vrename\bbuf\blsp\bvim\15<leader>rn\0‚\6\1\0\r\0)\0^6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\0\0009\4\5\0049\4\6\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0006\4\0\0009\4\5\0049\4\b\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\t\0006\4\0\0009\4\5\0049\4\n\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\v\0006\4\0\0009\4\5\0049\4\f\4B\0\4\0013\0\r\0006\1\14\0'\3\15\0B\1\2\0029\1\16\1B\1\1\0016\1\14\0'\3\17\0B\1\2\0029\1\16\1B\1\1\0015\1\18\0006\2\14\0'\4\19\0B\2\2\0029\2\16\0025\4\20\0=\1\21\4B\2\2\0016\2\0\0009\2\22\0029\2\23\0029\2\24\2B\2\1\0026\3\14\0'\5\25\0B\3\2\0029\3\26\3\18\5\2\0B\3\2\2\18\2\3\0006\3\27\0\18\5\1\0B\3\2\4X\6\20€5\b\28\0=\0\29\b=\2\30\b\a\a\31\0X\t\b€5\t&\0005\n$\0005\v\"\0005\f!\0=\f#\v=\v%\n=\n'\t=\t \b6\t\14\0'\v(\0B\t\2\0028\t\a\t9\t\16\t\18\v\b\0B\t\2\1E\6\3\3R\6ê\127K\0\1\0\14lspconfig\bLua\1\0\0\16diagnostics\1\0\0\fglobals\1\0\0\1\2\0\0\bvim\rsettings\vlua_ls\17capabilities\14on_attach\1\0\0\vipairs\25default_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\21ensure_installed\1\0\0\20mason-lspconfig\1\a\0\0\vclangd\18rust_analyzer\fpyright\rtsserver\vlua_ls\ngopls\nmason\nsetup\vfidget\frequire\0\15setloclist\14<leader>q\15open_float\14<leader>f\14goto_next\a]d\14goto_prev\15diagnostic\a[d\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nŒ\2\0\0\6\0\16\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0004\4\0\0=\4\5\3=\3\6\0025\3\a\0=\3\b\2B\0\2\0016\0\t\0009\0\n\0009\0\v\0'\2\f\0'\3\r\0'\4\14\0005\5\15\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\27:NvimTreeToggle<Enter>\14<leader>e\6n\bset\vkeymap\bvim\rrenderer\1\0\1\16group_empty\2\tview\rmappings\1\0\1\18adaptive_size\2\1\0\1\fsort_by\19case_sensitive\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-treesitter-textobjects" },
    config = { "\27LJ\2\nÄ\a\0\0\6\0#\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\0025\3\16\0005\4\14\0005\5\15\0=\5\f\4=\4\17\0035\4\18\0005\5\19\0=\5\20\0045\5\21\0=\5\22\0045\5\23\0=\5\24\0045\5\25\0=\5\26\4=\4\27\0035\4\28\0005\5\29\0=\5\30\0045\5\31\0=\5 \4=\4!\3=\3\"\2B\0\2\1K\0\1\0\16textobjects\tswap\18swap_previous\1\0\1\14<leader>A\21@parameter.inner\14swap_next\1\0\1\14<leader>a\21@parameter.inner\1\0\1\venable\2\tmove\22goto_previous_end\1\0\2\a[M\20@function.outer\a[]\17@class.outer\24goto_previous_start\1\0\2\a[[\17@class.outer\a[m\20@function.outer\18goto_next_end\1\0\2\a]M\20@function.outer\a][\17@class.outer\20goto_next_start\1\0\2\a]]\17@class.outer\a]m\20@function.outer\1\0\2\venable\2\14set_jumps\2\vselect\1\0\0\1\0\6\aaa\21@parameter.outer\aac\17@class.outer\aaf\20@function.outer\aif\20@function.inner\aia\21@parameter.inner\aic\17@class.inner\1\0\2\14lookahead\2\venable\2\26incremental_selection\fkeymaps\1\0\4\21node_decremental\18<c-backspace>\19init_selection\14<c-space>\22scope_incremental\n<c-s>\21node_incremental\14<c-space>\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\n\0\0\btsx\6c\bcpp\ago\blua\vpython\trust\15typescript\thelp\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    cond = { true },
    config = { "\27LJ\2\nH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\bfzf\19load_extension\14telescope\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nH\0\3\t\0\6\0\n6\3\0\0009\3\1\0039\3\2\3'\5\3\0\18\6\0\0\18\a\1\0005\b\4\0=\2\5\bB\3\5\1K\0\1\0\tdesc\1\0\0\6n\bset\vkeymap\bvim—\1\0\0\5\0\6\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0025\4\5\0B\2\2\0A\0\0\1K\0\1\0\1\0\1\14previewer\1\17get_dropdown\21telescope.themes\30current_buffer_fuzzy_find\22telescope.builtin\frequire^\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\bcwd\19~/.config/nvim\15find_files\22telescope.builtin\frequire¨\4\1\0\n\0\30\00076\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\v\0005\4\t\0005\5\a\0005\6\4\0009\a\5\0=\a\6\6=\6\b\5=\5\n\4=\4\f\3B\1\2\0013\1\r\0003\2\14\0003\3\15\0\18\4\1\0'\6\16\0006\a\0\0'\t\17\0B\a\2\0029\a\18\a'\b\19\0B\4\4\1\18\4\1\0'\6\20\0\18\a\2\0'\b\21\0B\4\4\1\18\4\1\0'\6\22\0\18\a\3\0'\b\23\0B\4\4\1\18\4\1\0'\6\24\0006\a\0\0'\t\17\0B\a\2\0029\a\25\a'\b\26\0B\4\4\1\18\4\1\0'\6\27\0006\a\0\0'\t\17\0B\a\2\0029\a\28\a'\b\29\0B\4\4\1K\0\1\0\23[S]earch by [G]rep\14live_grep\15<leader>sg\21[S]earch [F]iles\15find_files\15<leader>sf\22[S]earch [N]eovim\15<leader>sn([/] Fuzzy search in current buffer]\14<leader>/\30[ ] Find existing buffers\fbuffers\22telescope.builtin\20<leader><space>\0\0\0\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\n<esc>\nclose\1\0\2\n<C-d>\1\n<C-u>\1\nsetup\14telescope\22telescope.actions\frequire\0" },
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\nà\2\0\0\a\0\16\00025\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\5\0'\5\6\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\a\0'\5\6\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\b\0'\5\t\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\n\0'\5\v\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\f\0'\5\r\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\14\0'\5\15\0\18\6\0\0B\1\5\1K\0\1\0\22<Cmd>wincmd l<CR>\n<C-l>\22<Cmd>wincmd k<CR>\n<C-k>\22<Cmd>wincmd j<CR>\n<C-j>\22<Cmd>wincmd h<CR>\n<C-h>\ajk\15<C-\\><C-n>\n<esc>\6t\bset\vkeymap\bvim\1\0\1\vbuffer\3\0¥\2\1\0\4\0\f\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\0016\0\6\0003\1\b\0=\1\a\0006\0\t\0009\0\n\0'\2\v\0B\0\2\1K\0\1\0:autocmd! TermOpen term://* lua set_terminal_keymaps()\bcmd\bvim\0\25set_terminal_keymaps\a_G\15float_opts\1\0\2\nwidth\3~\vborder\vcurved\1\0\4\17open_mapping\n<c-\\>\22terminal_mappings\2\20start_in_insert\2\14direction\nfloat\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/vim-rhubarb",
    url = "https://github.com/tpope/vim-rhubarb"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/home/sarvjot/.local/share/nvim/site/pack/packer/start/vim-sleuth",
    url = "https://github.com/tpope/vim-sleuth"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\nà\2\0\0\a\0\16\00025\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\5\0'\5\6\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\a\0'\5\6\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\b\0'\5\t\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\n\0'\5\v\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\f\0'\5\r\0\18\6\0\0B\1\5\0016\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\14\0'\5\15\0\18\6\0\0B\1\5\1K\0\1\0\22<Cmd>wincmd l<CR>\n<C-l>\22<Cmd>wincmd k<CR>\n<C-k>\22<Cmd>wincmd j<CR>\n<C-j>\22<Cmd>wincmd h<CR>\n<C-h>\ajk\15<C-\\><C-n>\n<esc>\6t\bset\vkeymap\bvim\1\0\1\vbuffer\3\0¥\2\1\0\4\0\f\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\0016\0\6\0003\1\b\0=\1\a\0006\0\t\0009\0\n\0'\2\v\0B\0\2\1K\0\1\0:autocmd! TermOpen term://* lua set_terminal_keymaps()\bcmd\bvim\0\25set_terminal_keymaps\a_G\15float_opts\1\0\2\nwidth\3~\vborder\vcurved\1\0\4\17open_mapping\n<c-\\>\22terminal_mappings\2\20start_in_insert\2\14direction\nfloat\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n±\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\0\1\0\5\18icons_enabled\1\17globalstatus\2\23section_separators\5\25component_separators\6|\ntheme\24github_dark_default\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nŒ\2\0\0\6\0\16\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0004\4\0\0=\4\5\3=\3\6\0025\3\a\0=\3\b\2B\0\2\0016\0\t\0009\0\n\0009\0\v\0'\2\f\0'\3\r\0'\4\14\0005\5\15\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\27:NvimTreeToggle<Enter>\14<leader>e\6n\bset\vkeymap\bvim\rrenderer\1\0\1\16group_empty\2\tview\rmappings\1\0\1\18adaptive_size\2\1\0\1\fsort_by\19case_sensitive\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: github-nvim-theme
time([[Config for github-nvim-theme]], true)
try_loadstring("\27LJ\2\n¨\1\0\1\4\0\n\0\f5\1\5\0005\2\1\0009\3\0\0=\3\2\0029\3\3\0=\3\4\2=\2\6\0015\2\a\0=\2\b\0014\2\0\0=\2\t\1L\1\2\0\fTSField\19DiagnosticHint\1\0\1\tlink\30LspDiagnosticsDefaultHint\fhtmlTag\1\0\0\asp\thint\afg\1\0\2\abg\f#282c34\nstyle\14underline\bredâ\1\1\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0023\3\b\0=\3\t\2B\0\2\1K\0\1\0\14overrides\0\vcolors\1\0\2\nerror\f#ff0000\thint\vorange\rsidebars\1\5\0\0\aqf\15vista_kind\rterminal\vpacker\1\0\2\16theme_style\17dark_default\19function_style\vitalic\nsetup\17github-theme\frequire\0", "config", "github-nvim-theme")
time([[Config for github-nvim-theme]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: copilot.vim
time([[Config for copilot.vim]], true)
try_loadstring("\27LJ\2\n€\1\0\0\2\0\6\0\r6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0K\0\1\0\5\25copilot_tab_fallback\26copilot_assume_mapped\23copilot_no_tab_map\6g\bvim\0", "config", "copilot.vim")
time([[Config for copilot.vim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nÄ\a\0\0\6\0#\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\0025\3\16\0005\4\14\0005\5\15\0=\5\f\4=\4\17\0035\4\18\0005\5\19\0=\5\20\0045\5\21\0=\5\22\0045\5\23\0=\5\24\0045\5\25\0=\5\26\4=\4\27\0035\4\28\0005\5\29\0=\5\30\0045\5\31\0=\5 \4=\4!\3=\3\"\2B\0\2\1K\0\1\0\16textobjects\tswap\18swap_previous\1\0\1\14<leader>A\21@parameter.inner\14swap_next\1\0\1\14<leader>a\21@parameter.inner\1\0\1\venable\2\tmove\22goto_previous_end\1\0\2\a[M\20@function.outer\a[]\17@class.outer\24goto_previous_start\1\0\2\a[[\17@class.outer\a[m\20@function.outer\18goto_next_end\1\0\2\a]M\20@function.outer\a][\17@class.outer\20goto_next_start\1\0\2\a]]\17@class.outer\a]m\20@function.outer\1\0\2\venable\2\14set_jumps\2\vselect\1\0\0\1\0\6\aaa\21@parameter.outer\aac\17@class.outer\aaf\20@function.outer\aif\20@function.inner\aia\21@parameter.inner\aic\17@class.inner\1\0\2\14lookahead\2\venable\2\26incremental_selection\fkeymaps\1\0\4\21node_decremental\18<c-backspace>\19init_selection\14<c-space>\22scope_incremental\n<c-s>\21node_incremental\14<c-space>\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\n\0\0\btsx\6c\bcpp\ago\blua\vpython\trust\15typescript\thelp\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\n|\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\npaths\1\0\0\1\2\0\0\31~/.config/nvim/my_snippets\tload luasnip.loaders.from_vscode\frequire\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\1À\tbody\15lsp_expand–\1\0\1\a\1\t\0\21-\1\0\0009\1\0\0019\1\1\1B\1\1\0016\1\2\0009\1\3\0019\1\4\1B\1\1\2\6\1\5\0X\2\b€6\2\2\0009\2\6\0029\2\a\2\18\4\1\0'\5\b\0+\6\2\0B\2\4\1X\2\2€\18\2\0\0B\2\1\1K\0\1\0\0À\6i\18nvim_feedkeys\bapi\5\19copilot#Accept\afn\bvim\nabort\fmappingš\1\0\1\3\2\4\0\21-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\v€-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4€-\1\1\0009\1\3\1B\1\1\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\0À\1À\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleŽ\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\r€-\1\1\0009\1\2\1)\3ÿÿB\1\2\2\15\0\1\0X\2\5€-\1\1\0009\1\3\1)\3ÿÿB\1\2\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\0À\1À\tjump\rjumpable\21select_prev_item\fvisible•\4\1\0\f\0$\0A6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0049\5\t\0009\5\n\0059\5\v\0055\a\r\0009\b\t\0009\b\f\b)\nüÿB\b\2\2=\b\14\a9\b\t\0009\b\f\b)\n\4\0B\b\2\2=\b\15\a9\b\t\0009\b\16\bB\b\1\2=\b\17\a9\b\t\0009\b\18\b5\n\21\0009\v\19\0009\v\20\v=\v\22\nB\b\2\2=\b\23\a9\b\t\0003\n\24\0B\b\2\2=\b\25\a9\b\t\0003\n\26\0005\v\27\0B\b\3\2=\b\28\a9\b\t\0003\n\29\0005\v\30\0B\b\3\2=\b\31\aB\5\2\2=\5\t\0044\5\4\0005\6 \0>\6\1\0055\6!\0>\6\2\0055\6\"\0>\6\3\5=\5#\4B\2\2\0012\0\0€K\0\1\0\fsources\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\n<C-e>\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\14<C-Space>\rcomplete\n<C-f>\n<C-d>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\fluasnip\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nH\0\3\t\0\6\0\n6\3\0\0009\3\1\0039\3\2\3'\5\3\0\18\6\0\0\18\a\1\0005\b\4\0=\2\5\bB\3\5\1K\0\1\0\tdesc\1\0\0\6n\bset\vkeymap\bvim—\1\0\0\5\0\6\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0025\4\5\0B\2\2\0A\0\0\1K\0\1\0\1\0\1\14previewer\1\17get_dropdown\21telescope.themes\30current_buffer_fuzzy_find\22telescope.builtin\frequire^\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\bcwd\19~/.config/nvim\15find_files\22telescope.builtin\frequire¨\4\1\0\n\0\30\00076\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\v\0005\4\t\0005\5\a\0005\6\4\0009\a\5\0=\a\6\6=\6\b\5=\5\n\4=\4\f\3B\1\2\0013\1\r\0003\2\14\0003\3\15\0\18\4\1\0'\6\16\0006\a\0\0'\t\17\0B\a\2\0029\a\18\a'\b\19\0B\4\4\1\18\4\1\0'\6\20\0\18\a\2\0'\b\21\0B\4\4\1\18\4\1\0'\6\22\0\18\a\3\0'\b\23\0B\4\4\1\18\4\1\0'\6\24\0006\a\0\0'\t\17\0B\a\2\0029\a\25\a'\b\26\0B\4\4\1\18\4\1\0'\6\27\0006\a\0\0'\t\17\0B\a\2\0029\a\28\a'\b\29\0B\4\4\1K\0\1\0\23[S]earch by [G]rep\14live_grep\15<leader>sg\21[S]earch [F]iles\15find_files\15<leader>sf\22[S]earch [N]eovim\15<leader>sn([/] Fuzzy search in current buffer]\14<leader>/\30[ ] Find existing buffers\fbuffers\22telescope.builtin\20<leader><space>\0\0\0\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\n<esc>\nclose\1\0\2\n<C-d>\1\n<C-u>\1\nsetup\14telescope\22telescope.actions\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\ne\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1#show_trailing_blankline_indent\1\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nÓ\1\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\1\ttext\6~\14topdelete\1\0\1\ttext\bâ€¾\vdelete\1\0\1\ttext\6_\vchange\1\0\1\ttext\6~\badd\1\0\0\1\0\1\ttext\6+\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\ns\0\3\n\1\b\0\17\15\0\2\0X\3\3€'\3\0\0\18\4\2\0&\2\4\0036\3\1\0009\3\2\0039\3\3\3'\5\4\0\18\6\0\0\18\a\1\0005\b\5\0-\t\0\0=\t\6\b=\2\a\bB\3\5\1K\0\1\0\1À\tdesc\vbuffer\1\0\0\6n\bset\vkeymap\bvim\nLSP: d\0\0\6\0\6\0\v6\0\0\0006\2\1\0009\2\2\0026\4\1\0009\4\3\0049\4\4\0049\4\5\4B\4\1\0A\2\0\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim\nprint…\1\0\1\3\0\5\0\0246\1\0\0009\1\1\0019\1\2\0019\1\3\1\15\0\1\0X\2\6€6\1\0\0009\1\1\0019\1\2\0019\1\3\1B\1\1\1X\1\v€6\1\0\0009\1\1\0019\1\2\0019\1\4\1\15\0\1\0X\2\5€6\1\0\0009\1\1\0019\1\2\0019\1\4\1B\1\1\1K\0\1\0\15formatting\vformat\bbuf\blsp\bvimÀ\t\1\2\t\0005\0x3\2\0\0\18\3\2\0'\5\1\0006\6\2\0009\6\3\0069\6\4\0069\6\5\6'\a\6\0B\3\4\1\18\3\2\0'\5\a\0006\6\2\0009\6\3\0069\6\4\0069\6\b\6'\a\t\0B\3\4\1\18\3\2\0'\5\n\0006\6\2\0009\6\3\0069\6\4\0069\6\v\6'\a\f\0B\3\4\1\18\3\2\0'\5\r\0006\6\14\0'\b\15\0B\6\2\0029\6\16\6'\a\17\0B\3\4\1\18\3\2\0'\5\18\0006\6\2\0009\6\3\0069\6\4\0069\6\19\6'\a\20\0B\3\4\1\18\3\2\0'\5\21\0006\6\2\0009\6\3\0069\6\4\0069\6\22\6'\a\23\0B\3\4\1\18\3\2\0'\5\24\0006\6\14\0'\b\15\0B\6\2\0029\6\25\6'\a\26\0B\3\4\1\18\3\2\0'\5\27\0006\6\14\0'\b\15\0B\6\2\0029\6\28\6'\a\29\0B\3\4\1\18\3\2\0'\5\30\0006\6\2\0009\6\3\0069\6\4\0069\6\31\6'\a \0B\3\4\1\18\3\2\0'\5!\0006\6\2\0009\6\3\0069\6\4\0069\6\"\6'\a#\0B\3\4\1\18\3\2\0'\5$\0006\6\2\0009\6\3\0069\6\4\0069\6%\6'\a&\0B\3\4\1\18\3\2\0'\5'\0006\6\2\0009\6\3\0069\6\4\0069\6(\6'\a)\0B\3\4\1\18\3\2\0'\5*\0006\6\2\0009\6\3\0069\6\4\0069\6+\6'\a,\0B\3\4\1\18\3\2\0'\5-\0003\6.\0'\a/\0B\3\4\0016\3\2\0009\0030\0039\0031\3\18\5\1\0'\0062\0003\a3\0005\b4\0B\3\5\0012\0\0€K\0\1\0\1\0\1\tdesc#Format current buffer with LSP\0\vFormat!nvim_buf_create_user_command\bapi\31[W]orkspace [L]ist Folders\0\15<leader>wl [W]orkspace [R]emove Folder\28remove_workspace_folder\15<leader>wr\29[W]orkspace [A]dd Folder\25add_workspace_folder\15<leader>wa\25[G]oto [D]eclaration\16declaration\agD\28Signature Documentation\19signature_help\n<C-k>\24Hover Documentation\nhover\6K\26[W]orkspace [S]ymbols\"lsp_dynamic_workspace_symbols\15<leader>ws\25[D]ocument [S]ymbols\25lsp_document_symbols\15<leader>ds\22Type [D]efinition\20type_definition\14<leader>D\28[G]oto [I]mplementation\19implementation\agI\24[G]oto [R]eferences\19lsp_references\22telescope.builtin\frequire\agr\24[G]oto [D]efinition\15definition\agd\20[C]ode [A]ction\16code_action\15<leader>ca\15[R]e[n]ame\vrename\bbuf\blsp\bvim\15<leader>rn\0‚\6\1\0\r\0)\0^6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\0\0009\4\5\0049\4\6\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\a\0006\4\0\0009\4\5\0049\4\b\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\t\0006\4\0\0009\4\5\0049\4\n\4B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\v\0006\4\0\0009\4\5\0049\4\f\4B\0\4\0013\0\r\0006\1\14\0'\3\15\0B\1\2\0029\1\16\1B\1\1\0016\1\14\0'\3\17\0B\1\2\0029\1\16\1B\1\1\0015\1\18\0006\2\14\0'\4\19\0B\2\2\0029\2\16\0025\4\20\0=\1\21\4B\2\2\0016\2\0\0009\2\22\0029\2\23\0029\2\24\2B\2\1\0026\3\14\0'\5\25\0B\3\2\0029\3\26\3\18\5\2\0B\3\2\2\18\2\3\0006\3\27\0\18\5\1\0B\3\2\4X\6\20€5\b\28\0=\0\29\b=\2\30\b\a\a\31\0X\t\b€5\t&\0005\n$\0005\v\"\0005\f!\0=\f#\v=\v%\n=\n'\t=\t \b6\t\14\0'\v(\0B\t\2\0028\t\a\t9\t\16\t\18\v\b\0B\t\2\1E\6\3\3R\6ê\127K\0\1\0\14lspconfig\bLua\1\0\0\16diagnostics\1\0\0\fglobals\1\0\0\1\2\0\0\bvim\rsettings\vlua_ls\17capabilities\14on_attach\1\0\0\vipairs\25default_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\21ensure_installed\1\0\0\20mason-lspconfig\1\a\0\0\vclangd\18rust_analyzer\fpyright\rtsserver\vlua_ls\ngopls\nmason\nsetup\vfidget\frequire\0\15setloclist\14<leader>q\15open_float\14<leader>f\14goto_next\a]d\14goto_prev\15diagnostic\a[d\6n\bset\vkeymap\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Conditional loads
time([[Conditional loading of telescope-fzf-native.nvim]], true)
  require("packer.load")({"telescope-fzf-native.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of telescope-fzf-native.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-treesitter-textobjects ]]
time([[Sequenced loading]], false)

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

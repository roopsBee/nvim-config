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
local package_path_str = "/Users/roopeshpatel/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/roopeshpatel/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/roopeshpatel/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/roopeshpatel/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/roopeshpatel/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["auto-session"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/auto-session",
    url = "https://github.com/rmagatti/auto-session"
  },
  ["bufdelete.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/bufdelete.nvim",
    url = "https://github.com/famiu/bufdelete.nvim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  cpsm = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/cpsm",
    url = "https://github.com/nixprime/cpsm"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  fd = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/fd",
    url = "https://github.com/sharkdp/fd"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  fzf = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzy-lua-native"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/fzy-lua-native",
    url = "https://github.com/romgrk/fzy-lua-native"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["inlay-hints.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/inlay-hints.nvim",
    url = "https://github.com/simrat39/inlay-hints.nvim"
  },
  ["leap.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/leap.nvim",
    url = "https://github.com/ggandor/leap.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason-null-ls.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/mason-null-ls.nvim",
    url = "https://github.com/jayp0521/mason-null-ls.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\n�\21\0\0\a\0F\0i6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\t\0005\3\n\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\v\0005\3\f\0B\0\3\0016\0\r\0'\2\14\0B\0\2\0029\0\15\0005\2\16\0005\3\17\0=\3\18\0025\3\20\0005\4\19\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\31\0005\5\30\0=\5 \4=\4!\3=\3\"\0025\3#\0005\4$\0=\4%\0035\4'\0005\5&\0=\5(\0045\5)\0005\6*\0=\6+\5=\5,\0045\5-\0005\6.\0=\6+\5=\5/\4=\0040\3=\0031\0024\3\0\0=\0032\0025\0039\0005\0043\0004\5\0\0=\0054\0044\5\0\0=\0055\0044\5\0\0=\0056\0044\5\0\0=\0057\0044\5\0\0=\0058\4=\4:\0035\4<\0005\5;\0=\0050\4=\0041\3=\3=\0025\3>\0005\4@\0005\5?\0=\0050\4=\0041\3=\3A\0025\3D\0005\4B\0005\5C\0=\0050\4=\0041\3=\3!\2B\0\2\0016\0\0\0009\0\1\0'\2E\0B\0\2\1K\0\1\0#nnoremap \\ :Neotree reveal<cr>\1\0\0\1\0\a\agu\21git_unstage_file\aga\17git_add_file\agc\15git_commit\agp\rgit_push\agr\20git_revert_file\agg\24git_commit_and_push\6A\16git_add_all\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\t<bs>\16navigate_up\6.\rset_root\abd\18buffer_delete\1\0\3\24follow_current_file\2\18show_unloaded\2\21group_empty_dirs\2\15filesystem\1\0\0\1\0\n\6#\17fuzzy_sorter\6D\27fuzzy_finder_directory\6H\18toggle_hidden\a]g\22next_git_modified\6/\17fuzzy_finder\6f\21filter_on_submit\a[g\22prev_git_modified\6.\rset_root\n<c-x>\17clear_filter\t<bs>\16navigate_up\19filtered_items\1\0\4\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\21group_empty_dirs\1\24follow_current_file\2\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\16hide_hidden\2\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\f<space>\1\0\23\6l\18focus_preview\n<esc>\19revert_preview\t<cr>\topen\18<2-LeftMouse>\topen\6w\28open_with_window_picker\6p\25paste_from_clipboard\6c\tcopy\6m\tmove\6y\22copy_to_clipboard\6r\vrename\6?\14show_help\6d\vdelete\6R\frefresh\6A\18add_directory\6q\17close_window\6<\16prev_source\6z\20close_all_nodes\6C\15close_node\6x\21cut_to_clipboard\6t\16open_tabnew\6S\15open_split\6>\16next_source\6s\16open_vsplit\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\fnoremap\2\vnowait\2\1\0\2\nwidth\3\30\rposition\nright\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\runstaged\b\rmodified\5\fignored\b\14untracked\b\frenamed\b\fdeleted\b✖\nadded\5\rconflict\b\vstaged\b\tname\1\0\3\14highlight\20NeoTreeFileName\26use_git_status_colors\2\19trailing_slash\1\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\1\0\5\16folder_open\b\18folder_closed\b\fdefault\6*\14highlight\20NeoTreeFileIcon\17folder_empty\bﰊ\vindent\1\0\t\14highlight\24NeoTreeIndentMarker\23expander_collapsed\b\23last_indent_marker\b└\18indent_marker\b│\17with_markers\2\fpadding\3\1\16indent_size\3\2\23expander_highlight\20NeoTreeExpander\22expander_expanded\b\14container\1\0\0\1\0\1\26enable_character_fade\2$open_files_do_not_replace_types\1\4\0\0\rterminal\ftrouble\aqf\1\0\5\26sort_case_insensitive\1\25close_if_last_window\1\23enable_diagnostics\2\22enable_git_status\2\23popup_border_style\frounded\nsetup\rneo-tree\frequire\1\0\2\ttext\b\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\t \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\t \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\t \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\0" },
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/opt/nvim-bqf",
    url = "https://github.com/kevinhwang91/nvim-bqf"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-ts-autotag"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/mrjones2014/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["nvim-yarp"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/nvim-yarp",
    url = "https://github.com/roxma/nvim-yarp"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["rust-tools.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["session-lens"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/session-lens",
    url = "https://github.com/rmagatti/session-lens"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim",
    url = "https://github.com/nvim-telescope/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["typescript.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/typescript.nvim",
    url = "https://github.com/jose-elias-alvarez/typescript.nvim"
  },
  ["vim-ReplaceWithRegister"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/vim-ReplaceWithRegister",
    url = "https://github.com/inkarkat/vim-ReplaceWithRegister"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/vim-maximizer",
    url = "https://github.com/szw/vim-maximizer"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["wilder.nvim"] = {
    loaded = true,
    path = "/Users/roopeshpatel/.local/share/nvim/site/pack/packer/start/wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\n�\21\0\0\a\0F\0i6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\t\0005\3\n\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\v\0005\3\f\0B\0\3\0016\0\r\0'\2\14\0B\0\2\0029\0\15\0005\2\16\0005\3\17\0=\3\18\0025\3\20\0005\4\19\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\31\0005\5\30\0=\5 \4=\4!\3=\3\"\0025\3#\0005\4$\0=\4%\0035\4'\0005\5&\0=\5(\0045\5)\0005\6*\0=\6+\5=\5,\0045\5-\0005\6.\0=\6+\5=\5/\4=\0040\3=\0031\0024\3\0\0=\0032\0025\0039\0005\0043\0004\5\0\0=\0054\0044\5\0\0=\0055\0044\5\0\0=\0056\0044\5\0\0=\0057\0044\5\0\0=\0058\4=\4:\0035\4<\0005\5;\0=\0050\4=\0041\3=\3=\0025\3>\0005\4@\0005\5?\0=\0050\4=\0041\3=\3A\0025\3D\0005\4B\0005\5C\0=\0050\4=\0041\3=\3!\2B\0\2\0016\0\0\0009\0\1\0'\2E\0B\0\2\1K\0\1\0#nnoremap \\ :Neotree reveal<cr>\1\0\0\1\0\a\agu\21git_unstage_file\aga\17git_add_file\agc\15git_commit\agp\rgit_push\agr\20git_revert_file\agg\24git_commit_and_push\6A\16git_add_all\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\t<bs>\16navigate_up\6.\rset_root\abd\18buffer_delete\1\0\3\24follow_current_file\2\18show_unloaded\2\21group_empty_dirs\2\15filesystem\1\0\0\1\0\n\6#\17fuzzy_sorter\6D\27fuzzy_finder_directory\6H\18toggle_hidden\a]g\22next_git_modified\6/\17fuzzy_finder\6f\21filter_on_submit\a[g\22prev_git_modified\6.\rset_root\n<c-x>\17clear_filter\t<bs>\16navigate_up\19filtered_items\1\0\4\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\21group_empty_dirs\1\24follow_current_file\2\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\16hide_hidden\2\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\f<space>\1\0\23\6l\18focus_preview\n<esc>\19revert_preview\t<cr>\topen\18<2-LeftMouse>\topen\6w\28open_with_window_picker\6p\25paste_from_clipboard\6c\tcopy\6m\tmove\6y\22copy_to_clipboard\6r\vrename\6?\14show_help\6d\vdelete\6R\frefresh\6A\18add_directory\6q\17close_window\6<\16prev_source\6z\20close_all_nodes\6C\15close_node\6x\21cut_to_clipboard\6t\16open_tabnew\6S\15open_split\6>\16next_source\6s\16open_vsplit\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\fnoremap\2\vnowait\2\1\0\2\nwidth\3\30\rposition\nright\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\runstaged\b\rmodified\5\fignored\b\14untracked\b\frenamed\b\fdeleted\b✖\nadded\5\rconflict\b\vstaged\b\tname\1\0\3\14highlight\20NeoTreeFileName\26use_git_status_colors\2\19trailing_slash\1\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\1\0\5\16folder_open\b\18folder_closed\b\fdefault\6*\14highlight\20NeoTreeFileIcon\17folder_empty\bﰊ\vindent\1\0\t\14highlight\24NeoTreeIndentMarker\23expander_collapsed\b\23last_indent_marker\b└\18indent_marker\b│\17with_markers\2\fpadding\3\1\16indent_size\3\2\23expander_highlight\20NeoTreeExpander\22expander_expanded\b\14container\1\0\0\1\0\1\26enable_character_fade\2$open_files_do_not_replace_types\1\4\0\0\rterminal\ftrouble\aqf\1\0\5\26sort_case_insensitive\1\25close_if_last_window\1\23enable_diagnostics\2\22enable_git_status\2\23popup_border_style\frounded\nsetup\rneo-tree\frequire\1\0\2\ttext\b\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\t \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\t \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\t \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-treesitter ]]
vim.cmd [[ packadd nvim-ts-autotag ]]
time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType qf ++once lua require("packer.load")({'nvim-bqf'}, { ft = "qf" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")

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

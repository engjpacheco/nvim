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
local package_path_str = "C:\\Users\\FRANCI~1.PAC\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\FRANCI~1.PAC\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\FRANCI~1.PAC\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\FRANCI~1.PAC\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\FRANCI~1.PAC\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
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
  LuaSnip = {
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["barbar.nvim"] = {
    config = { 'require("plugins/config/barbar")' },
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["calendar-vim"] = {
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\calendar-vim",
    url = "https://github.com/renerocksai/calendar-vim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { 'require("plugins/config/gitsigns")' },
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  ["hop.nvim"] = {
    config = { 'require("plugins/config/hop")' },
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { 'require("plugins/config/indent-blankline")' },
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lua-dev.nvim"] = {
    config = { 'require("plugins/config/lua-dev")' },
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lua-dev.nvim",
    url = "https://github.com/folke/lua-dev.nvim"
  },
  ["lualine.nvim"] = {
    config = { 'require("plugins/config/lualine")' },
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { 'require("plugins/config/neo-tree")' },
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  neogit = {
    config = { 'require("plugins/config/neogit")' },
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    config = { 'require("plugins/config/null-ls")' },
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { 'require("plugins/config/autopairs")' },
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { 'require("plugins/config/cmp")' },
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { 'require("plugins/config/colorizer")' },
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    config = { 'require("plugins/config/comments")' },
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-lsp-installer"] = {
    config = { 'require("plugins/config/lspconfig")' },
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { 'require("plugins/config/nvim-lspconfig")' },
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { 'require("plugins/config/notify")' },
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-treesitter"] = {
    config = { 'require("plugins/config/treesitter")' },
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-tundra"] = {
    config = { 'require("plugins/config/tundra")' },
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-tundra",
    url = "https://github.com/sam4llis/nvim-tundra"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    config = { 'require("plugins/config/packer")' },
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["startup.nvim"] = {
    config = { 'require("plugins/config/startup-config")' },
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\startup.nvim",
    url = "https://github.com/startup-nvim/startup.nvim"
  },
  ["telekasten.nvim"] = {
    config = { 'require("plugins/config/telekasten")' },
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telekasten.nvim",
    url = "https://github.com/renerocksai/telekasten.nvim"
  },
  ["telescope.nvim"] = {
    config = { 'require("plugins/config/telescope")' },
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  undotree = {
    config = { 'require("plugins/config/undotree")' },
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-surround"] = {
    config = { 'require("plugins/config/vim-surround")' },
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  vimwikiwiki = {
    loaded = true,
    path = "C:\\Users\\francisco.pacheco\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vimwikiwiki",
    url = "https://github.com/vimwiki/vimwikiwiki"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: markdown-preview.nvim
time([[Setup for markdown-preview.nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\2\0\0\rmarkdown\19mkdp_filetypes\6g\bvim\0", "setup", "markdown-preview.nvim")
time([[Setup for markdown-preview.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
require("plugins/config/cmp")
time([[Config for nvim-cmp]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
require("plugins/config/indent-blankline")
time([[Config for indent-blankline.nvim]], false)
-- Config for: startup.nvim
time([[Config for startup.nvim]], true)
require("plugins/config/startup-config")
time([[Config for startup.nvim]], false)
-- Config for: telekasten.nvim
time([[Config for telekasten.nvim]], true)
require("plugins/config/telekasten")
time([[Config for telekasten.nvim]], false)
-- Config for: lua-dev.nvim
time([[Config for lua-dev.nvim]], true)
require("plugins/config/lua-dev")
time([[Config for lua-dev.nvim]], false)
-- Config for: vim-surround
time([[Config for vim-surround]], true)
require("plugins/config/vim-surround")
time([[Config for vim-surround]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
require("plugins/config/lualine")
time([[Config for lualine.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
require("plugins/config/telescope")
time([[Config for telescope.nvim]], false)
-- Config for: neogit
time([[Config for neogit]], true)
require("plugins/config/neogit")
time([[Config for neogit]], false)
-- Config for: packer.nvim
time([[Config for packer.nvim]], true)
require("plugins/config/packer")
time([[Config for packer.nvim]], false)
-- Config for: undotree
time([[Config for undotree]], true)
require("plugins/config/undotree")
time([[Config for undotree]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
require("plugins/config/neo-tree")
time([[Config for neo-tree.nvim]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
require("plugins/config/notify")
time([[Config for nvim-notify]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
require("plugins/config/nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
require("plugins/config/colorizer")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-tundra
time([[Config for nvim-tundra]], true)
require("plugins/config/tundra")
time([[Config for nvim-tundra]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
require("plugins/config/lspconfig")
time([[Config for nvim-lsp-installer]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
require("plugins/config/gitsigns")
time([[Config for gitsigns.nvim]], false)
-- Config for: barbar.nvim
time([[Config for barbar.nvim]], true)
require("plugins/config/barbar")
time([[Config for barbar.nvim]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
require("plugins/config/null-ls")
time([[Config for null-ls.nvim]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
require("plugins/config/comments")
time([[Config for nvim-comment]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
require("plugins/config/treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
require("plugins/config/autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
require("plugins/config/hop")
time([[Config for hop.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
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

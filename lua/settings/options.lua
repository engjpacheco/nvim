local set = vim.opt

-- Blink cursor :D
vim.cmd[[set guicursor+=a:-blinkwait175-blinkoff150-blinkon175]]

set.expandtab = true
set.smarttab = true
set.shiftwidth = 2
set.tabstop = 2

set.hlsearch = false
set.ignorecase = true
set.smartcase = true

set.splitbelow = true
set.splitright = true
set.wrap = true
set.scrolloff = 5
set.fileencoding = "utf-8"
set.termguicolors = true
set.cmdheight = 1

set.number = true
set.relativenumber = true
set.cursorline = true

set.hidden = true
set.showmode = false
set.showtabline = 2
set.signcolumn = "yes"
set.mouse = "a"

set.undofile = true
set.swapfile = false
set.backup = false
set.clipboard = "unnamedplus"
set.completeopt = "menuone,noselect"
set.colorcolumn = "81"
set.conceallevel = 2
set.autochdir = true

-- Disable loading certain plugins

-- Whether to load netrw by default, see https://github.com/bling/dotvim/issues/4
vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1
vim.g.netrw_liststyle = 3
if vim.g.is_win then
  vim.g.netrw_http_cmd = "curl --ssl-no-revoke -Lo"
end

-- Do not load tohtml.vim
vim.g.loaded_2html_plugin = 1

-- Do not load zipPlugin.vim, gzip.vim and tarPlugin.vim (all these plugins are
-- related to checking files inside compressed files)
vim.g.loaded_zipPlugin = 1
vim.g.loaded_gzip = 1
vim.g.loaded_tarPlugin = 1

-- Do not load the tutor plugin
vim.g.loaded_tutor_mode_plugin = 1

-- Do not use builtin matchit.vim and matchparen.vim since we use vim-matchup
vim.g.loaded_matchit = 1
vim.g.loaded_matchparen = 1

-- Disable sql omni completion, it is broken.
vim.g.loaded_sql_completion = 1

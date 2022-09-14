local set = vim.opt

set.expandtab = true
set.smarttab = true
set.shiftwidth = 2
set.tabstop = 2

set.hlsearch = false
set.ignorecase = true
set.smartcase = true

set.splitbelow = true
set.splitright = true
set.wrap = false
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

local hl = function(thing, opts)
  vim.api.nvim_set_hl(0, thing, opts)
end
function ColorMyPencils()

  hl("SignColumn", {
    bg = "none",
  })

  hl("ColorColumn", {
    ctermbg = 0,
    bg = "#1d2021",
  })

  hl("CursorLineNR", {
    bg = "None",
    underline = true,
  })

  hl("CursorLine", {
    bg = "None",
    underline = true,
  })

  hl("Normal", {
    bg = "none",
    underline = true,
  })

  hl("LineNr", {
    fg = "#5eacd3",
    underline = true,
  })

  hl("netrwDir", {
    fg = "#5eacd3"
  })

end

ColorMyPencils()

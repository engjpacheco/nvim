require("settings")
require("plugins")
-- require("cwebster.colors").setup()

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
    bg = "none"
  })

  hl("LineNr", {
    fg = "#5eacd3"
  })

  hl("netrwDir", {
    fg = "#5eacd3"
  })

end

ColorMyPencils()

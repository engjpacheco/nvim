-- toggleterm
require("toggleterm").setup{
  open_mapping = [[<leader>/]],
  hide_numbers = true, -- hide the number column in toggleterm buffers
  start_in_insert = true,
  insert_mappings = false, -- whether or not the open mapping applies in insert mode
  terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
  persist_size = true,
  shade_terminals = false,
  direction = 'float',
  close_on_exit = true, -- close the terminal window when the process exits
  shell = vim.o.shell, -- change the default shell
  -- This field is only relevant if direction is set to 'float'
  float_opts = {
    -- The border key is *almost* the same as 'nvim_open_win'
    -- see :h nvim_open_win for details on borders however
    -- the 'curved' border is a custom border type
    -- not natively supported but implemented in this plugin.
    border = 'curved',
    -- width = 100,
    -- height = 50,
    winblend = 0,
    highlights = {
      border = "Normal",
      background = "Normal",
    }
  }
}
local Terminal  = require('toggleterm.terminal').Terminal

local lazygit = Terminal:new({ cmd = "lazygit", count=5, hidden = true })
function _lazygit_toggle()
  lazygit:toggle()
end
vim.api.nvim_set_keymap("n", "<F2>", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})

local python = Terminal:new({ cmd = "python", count=5, hidden = true })
function _python_toggle()
  python:toggle()
end
vim.api.nvim_set_keymap("n", "<leader><leader>p", "<cmd>lua _python_toggle()<CR>", {noremap = true, silent = true})

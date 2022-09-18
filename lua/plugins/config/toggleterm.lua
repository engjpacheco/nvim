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

local gccomplie = Terminal:new({
	count=3,
	close_on_exit=true,
})
function _gccomplie_toggle()
  -- gccomplie:toggle()
  vim.cmd[[w]]
  vim.cmd[[3TermExec cmd="g++-11 -std=c++17 -O2 -Wall -Wextra -pedantic -Wshadow -Wformat=2 -Wfloat-equal -Wconversion -Wlogical-op -Wshift-overflow=2 -Wduplicated-cond -Wcast-qual -Wcast-align -Wno-unused-result -Wno-sign-conversion -fsanitize=address -fsanitize=undefined -DLOCAL %:r.cpp -o %:r"]]
end

function _gccrun_toggle()
  vim.cmd[[3TermExec cmd="%:p:h/%:t:r"]]
end

-- vim.api.nvim_set_keymap("", "<F3>", "<cmd>lua _gccomplie_toggle()<CR>", {noremap = true, silent = true})
-- vim.api.nvim_set_keymap("", "<F4>", "<cmd>lua _gccrun_toggle()<CR>", {noremap = true, silent = true})

local lazygit = Terminal:new({ cmd = "lazygit", count=5, hidden = true })
function _lazygit_toggle()
  lazygit:toggle()
end
vim.api.nvim_set_keymap("n", "<F2>", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})

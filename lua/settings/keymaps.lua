local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- nvim tree mappings --
map("n", "<leader>.", "<cmd>NvimTreeToggle<CR>", opts)
map("n", "<leader>gt", "<cmd>NvimTreeFocus<CR>", opts)

-- barbar mappings --

-- Move to previous/next
-- map("n", "<A-,>", ":BufferPrevious<CR>", opts)
-- map("n", "<A-.>", ":BufferNext<CR>", opts)
map("n", "<A-,>", ":bp<CR>", opts)
map("n", "<A-.>", ":bn<CR>", opts)
-- Re-order to previous/next
map("n", "<A-<>", ":BufferMovePrevious<CR>", opts)
map("n", "<A->>", " :BufferMoveNext<CR>", opts)
-- Goto buffer in position...
map("n", "<A-1>", ":BufferGoto 1<CR>", opts)
map("n", "<A-2>", ":BufferGoto 2<CR>", opts)
map("n", "<A-3>", ":BufferGoto 3<CR>", opts)
map("n", "<A-4>", ":BufferGoto 4<CR>", opts)
map("n", "<A-5>", ":BufferGoto 5<CR>", opts)
map("n", "<A-6>", ":BufferGoto 6<CR>", opts)
map("n", "<A-7>", ":BufferGoto 7<CR>", opts)
map("n", "<A-8>", ":BufferGoto 8<CR>", opts)
map("n", "<A-9>", ":BufferGoto 9<CR>", opts)
map("n", "<A-0>", ":BufferLast<CR>", opts)
-- Close buffer
map("n", "<A-q>", ":BufferClose<CR>", opts)
-- Magic buffer-picking mode
map("n", "<C-p>", ":BufferPick<CR>", opts)

-- Move windows:
map('n', '<C-h>', '<C-W>h', opts)
map('n', '<C-j>', '<C-W>j', opts)
map('n', '<C-k>', '<C-W>k', opts)
map('n', '<C-l>', '<C-W>l', opts)

-- Move in insert mode like in nirmal mode hjkl:
map('i', '<C-h>', '<Left>', opts)
map('i', '<C-j>', '<Down>', opts)
map('i', '<C-k>', '<Up>', opts)
map('i', '<C-l>', '<Right>', opts)

-- telescope mappings --
map("n", "<leader>ff", ":Telescope find_files hidden=true<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>fb", ":Telescope file_browser<CR>", opts)
map("n", "<leader>fr", ":Telescope oldfiles<CR>", opts)
map("n", "<leader>ht", ":Telescope colorscheme<CR>", opts)

-- Resize with arrows
map("n", "<C-S-Up>", ":resize -2<CR>", opts)
map("n", "<C-S-Down>", ":resize +2<CR>", opts)
map("n", "<C-S-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-S-Right>", ":vertical resize +2<CR>", opts)

-- undotree
map("n", "<leader>u", ":UndotreeToggle<cr>", opts)

-- hop
vim.api.nvim_set_keymap(
  "",
  "f",
  "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>"
  ,
  {}
)
vim.api.nvim_set_keymap(
  "",
  "F",
  "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>"
  ,
  {}
)
vim.api.nvim_set_keymap(
  "",
  "t",
  "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>"
  ,
  {}
)
vim.api.nvim_set_keymap(
  "",
  "T",
  "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>"
  ,
  {}
)

-- git
map('n', '<leader>gs', ':Telescope git_status<cr>', opts)
map('n', '<leader>gc', ':Telescope git_commits<cr>', opts)
map('n', '<leader>gb', ':Telescope git_branches<cr>', opts)

-- Personal things
map('n', 'S', ':%s/\\<<C-r><C-w>\\>//gI<Left><Left><Left>', opts)
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)
-- map('i', '<C-c', '<Esc>', opts)
map('n', '<leader>ps', ':PackerSync<CR>', opts)
map("n", '<M-x>', ":", opts) -- Meta X like emacs. This is blasphemy....
map("n", '<leader>hrr', ":luafile%<CR>", opts)
map("n", '<leader>cw', ":enew<CR>", opts) -- Meta X like emacs. This is blasphemy....
map('i', 'jk', '<Esc>l', opts)
map('i', 'jj', '<Esc>l', opts)
map('i', 'aa', '<Esc>A', opts)
map('i', 'qw', '<Esc>$', opts)
map('n', '<esc>', ':noh<return><esc>', opts)
map('n', '<f1>', ':Dashboard<CR>',opts)
map('n', '<f5>', ':CalendarH<CR>',opts)
map('n', '<f12>', ':!python %<CR>',opts)

-- documents mardown and pdf
map("n", '<leader>pdf', ":silent !silent  latexpdf % <CR>", opts)
map("n", '<leader>md', ":MarkdownPreview<CR>", opts)
map("n", '<leader>cx', ":MkdnToggleToDo<CR>", opts)



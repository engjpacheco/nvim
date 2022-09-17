local dashboard = require("dashboard")

dashboard.custom_header = {
  "                                                       ",
  "                                                       ",
  "                                                       ",
  " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
  " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
  " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
  " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
  " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
  " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
  "  [ TIP: To exit Neovim, just destroy your computer. ] ",
  "                                                       ",
  "                                                       ",
  "                                                       ",
}
dashboard.custom_center = {
    {icon = '  ',
    desc = 'Find recent files                         ',
    action = 'Telescope oldfiles',
    shortcut = 'SPC f r'},
    {icon = '  ',
    desc = 'Find files                                ',
    action = 'Telescope find_files find_command=rg,--hidden,--files',
    shortcut = 'SPC f f'},
    {icon = '  ',
    desc ='File browser                              ',
    action =  'Telescope file_browser' ,
    shortcut = 'SPC f b'},
    {icon = '  ',
    desc = 'Find word                                 ',
    action = 'Telescope live_grep',
    shortcut = 'SPC f w'},
    {icon = '  ',
    desc = 'Load new theme                            ',
    action = 'Telescope colorscheme',
    shortcut = 'SPC h t'},
    -- {icon = "  ",
    -- desc = 'Quit Nvim                                      ',
    -- action = "qa",
    -- shortcut = 'Q'},
    }
dashboard.custom_footer = { '', "“Make it work, make it right, make it fast.” – Kent Beck" }
vim.cmd([[
  augroup dashboard_enter
    au!
    autocmd FileType dashboard nnoremap <buffer> Q :qa<CR>
    autocmd FileType dashboard nnoremap <buffer> fr :Telescope oldfiles<CR>
    autocmd FileType dashboard nnoremap <buffer> fb :Telescope file_browser<CR>
    autocmd FileType dashboard nnoremap <buffer> fw :Telescope live_grep<CR>
    autocmd FileType dashboard nnoremap <buffer> ht :Telescope colorscheme<CR>
  augroup END
]])

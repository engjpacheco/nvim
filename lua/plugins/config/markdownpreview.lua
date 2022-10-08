local operativeSystem = vim.loop.os_uname().sysname

if operativeSystem == "Windows_NT" then
  vim.cmd[[let g:mkdp_browser = '']]
elseif operativeSystem == "Linux" then
  vim.cmd[[let g:mkdp_browser = 'surf']]
end

vim.cmd[[let g:mkdp_auto_start = 0]]
vim.cmd[[let g:mkdp_theme = 'dark']]


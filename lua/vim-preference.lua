local cmd = vim.cmd

cmd("set expandtab")
cmd("set tabstop=2")
cmd("set softtabstop=2")
cmd("set shiftwidth=2")
cmd("set number")
cmd("set wrap")
vim.g.mapleader = " "

vim.opt.conceallevel = 1

vim.keymap.set("t","<ESC>","<c-\\><c-n>", {noremap=true,silent=true})

-- Set the *.blade.php file to be filetype of blade
cmd [[
augroup BladeFiletypeRelated
  au BufNewFile, BufRead *.blade.php set ft=blade
augroup END
]]

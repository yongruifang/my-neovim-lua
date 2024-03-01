vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.g.mapleader = " "

vim.opt.conceallevel = 1

vim.keymap.set("t","<ESC>","<c-\\><c-n>", {noremap=true,silent=true})

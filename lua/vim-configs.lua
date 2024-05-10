vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set clipboard+=unnamedplus")

vim.wo.number = true
vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.keymap.set('n', '<leader>w', '<C-w>', {})

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.o.background = "dark"
vim.opt.clipboard = "unnamedplus"
vim.opt.swapfile = false
vim.wo.number = true
vim.wo.relativenumber = true

vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.keymap.set("n", "<tab>", ":bnext<CR>")
vim.keymap.set("n", "<leader>x", ":bp<bar>sp<bar>bn<bar>bd<CR>")



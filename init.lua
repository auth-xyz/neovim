-- config --

-- General Settings
vim.g.mapleader = " "              -- Leader key: <Space>
vim.g.maplocalleader = "\\"        -- Local leader key: \
vim.o.background = "dark"          -- Background setting: dark mode
vim.opt.clipboard = "unnamedplus"  -- Use system clipboard

-- Window Options
vim.wo.number = true               -- Show line numbers
vim.wo.relativenumber = true       -- Show relative line numbers

-- Indentation Settings
vim.cmd("set expandtab")           -- Use spaces instead of tabs
vim.cmd("set tabstop=2")           -- Tab width: 2 spaces
vim.cmd("set softtabstop=2")       -- Soft tab width: 2 spaces
vim.cmd("set shiftwidth=2")        -- Indent width: 2 spaces


-- Modules -- 

require("lazy_setup")
require("keybinds")
require("swap")
require("lazy").setup("plugins")


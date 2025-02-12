-- Keybindings
-- Window Navigation
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>") -- <Ctrl-k>: Move to the window above
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>") -- <Ctrl-j>: Move to the window below
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>") -- <Ctrl-h>: Move to the window on the left
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>") -- <Ctrl-l>: Move to the window on the right

-- Visual mode indent using > and <
vim.keymap.set("v", "<", "<gv", {}) -- <: Decrease indentation
vim.keymap.set("v", ">", ">gv", {}) -- >: Increase indentation

-- Buffer Navigation
vim.keymap.set("n", "<leader>x", ":bp<bar>sp<bar>bn<bar>bd<CR>") -- <Leader>x: Close the current buffer

-- Toggle highlight search
vim.keymap.set("n", "<leader>h", ":set hlsearch!<CR>")
vim.api.nvim_set_keymap("n", "<leader>E", ":lua vim.diagnostic.setqflist()<CR>", { noremap = true, silent = true })

-- Plugin Keybindings
-- FTerm
vim.keymap.set("n", "<leader>tt", ":lua require('FTerm').toggle()<CR>") -- <Leader>tt: Toggle FTerm (Normal mode)
vim.keymap.set("t", "<leader>tt", "<C-\\><C-n>:lua require('FTerm').toggle()<CR>") -- <Leader>tt: Toggle FTerm (Terminal mode)

-- Neo-tree toggle
vim.keymap.set("n", "<leader>e", ":Neotree<CR>")

-- Comment Toggle
vim.keymap.set({ "n", "v" }, "<leader>/", ":CommentToggle<CR>") -- <Leader>/: Toggle comment

-- LSP Keybindings
vim.keymap.set("n", "<leader>ff", ":lua vim.lsp.buf.format()<CR>") -- <Leader>ff: Format the current buffer
vim.keymap.set("n", "K", vim.lsp.buf.hover, {}) -- K: Show hover documentation
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {}) -- gd: Go to definition
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {}) -- <Leader>ca: Code actions (normal/visual mode)
vim.keymap.set("n", "<leader>m", vim.lsp.buf.rename, {}) -- <Leader>m: Rename symbol

-- Themery keybinds, set default to gruvbox-material
vim.keymap.set("n", "<leader>th", ":Themery<CR>")

-- Spectacle keybinds
vim.api.nvim_set_keymap("n", "<leader>ts", "<cmd>:lua require('spectacle').SpectacleTelescope()<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>ss", "<cmd>:lua require('spectacle').SpectacleSave()<CR>", {})

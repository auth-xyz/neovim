-- Keybindings
-- Window Navigation
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>") -- <Ctrl-k>: Move to the window above
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>") -- <Ctrl-j>: Move to the window below
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>") -- <Ctrl-h>: Move to the window on the left
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>") -- <Ctrl-l>: Move to the window on the right

-- Buffer Navigation
vim.keymap.set("n", "<tab>", ":bnext<CR>")                       -- <Tab>: Switch to the next buffer
vim.keymap.set("n", "<leader>x", ":bp<bar>sp<bar>bn<bar>bd<CR>") -- <Leader>x: Close the current buffer

-- Plugin Keybindings
-- Codeium
vim.keymap.set("i", "<C-g>", function()
	return vim.fn["codeium#Accept"]()
end, { expr = true, silent = true }) -- <Ctrl-g>: Accept Codeium suggestion

-- FTerm
vim.keymap.set("n", "<leader>tt", ":lua require('FTerm').toggle()<CR>")            -- <Leader>tt: Toggle FTerm (Normal mode)
vim.keymap.set("t", "<leader>tt", "<C-\\><C-n>:lua require('FTerm').toggle()<CR>") -- <Leader>tt: Toggle FTerm (Terminal mode)

-- Neo-tree
vim.keymap.set("n", "<leader>e", ":Neotree<CR>")       -- <Leader>e: Open Neo-tree

-- Comment Toggle
vim.keymap.set("n", "<leader>/", ":CommentToggle<CR>") -- <Leader>/: Toggle comment

-- LSP Keybindings
vim.keymap.set("n", "<leader>ff", ":lua vim.lsp.buf.format()<CR>")        -- <Leader>ff: Format the current buffer
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})                           -- K: Show hover documentation
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})                     -- gd: Go to definition
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})   -- <Leader>ca: Code actions (normal/visual mode)
vim.keymap.set("n", "<leader>m", vim.lsp.buf.rename, {})                  -- <Leader>m: Rename symbol

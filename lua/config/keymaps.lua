vim.g.mapleader = " "
vim.keymap.set('n', '<leader><leader>e', vim.cmd.Oil)
vim.keymap.set('n', '<leader>so', ":w<CR>:source %<CR>")

-- Move blocks of text up and down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- fix cursor in half page scrolls
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- fix cursor in jumping through search results
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- if pasting on visual, text in register does not get overwritten
vim.keymap.set("x", "<leader>p", "\"_dP")

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.mouse = ""
vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.keymap.set("n", "<C-d>", "<C-d>zz", {})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {})

vim.keymap.set("n", "<C-b>", "<C-w><C-w>", {})
vim.keymap.set("n", "<C-m>", "@q", {})

vim.keymap.set("n", "<C-s>", ":vsplit<CR>", {})

vim.keymap.set("n", "W", ":w<CR>", {})
vim.keymap.set("n", "<LEADER>n", "o<C-c>", {})

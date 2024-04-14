vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.mouse = ""
vim.opt.guicursor = "i:block"
vim.opt.autoread = true
vim.g.mapleader = " "
vim.opt.termguicolors = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.keymap.set("n", "<C-d>", "<C-d>zz", {})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {})

vim.keymap.set("n", "<C-b>", "<C-w><C-w>", {})
vim.keymap.set("n", "<C-m>", "@q", {})

vim.keymap.set("n", "<C-s>", ":vsplit<CR>", {})
vim.keymap.set("n", "L", ":call cursor(0, len(getline('.'))/2)<CR>", {})

vim.keymap.set("n", "W", ":w<CR>", {})

vim.keymap.set("n", "<LEADER>n", "o<C-c>kzz", {})
vim.keymap.set("n", "<LEADER>m", "O<C-c>jzz", {})

vim.keymap.set("n", "J", "<C-d>", {})

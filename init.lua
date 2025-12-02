vim.opt.termguicolors = true

vim.g.mapleader = " "

require("config.lazy")
require("config.keymaps")

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8

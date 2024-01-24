-- Leader key
vim.g.mapleader = "\\"

-- Load plugins
require("lazy_plugins")

-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup()

-- nvim-lspconfig.lua
require("nvim-lspconfig")

-- Enable cursor wrapping
vim.opt.whichwrap:append("<,>,h,l,[,]")

-- Show existing tabs as 8 spaces
vim.opt.tabstop = 8

-- Use 4 spaces when indenting with '>'
vim.opt.shiftwidth = 4

-- Insert spaces when Tab is pressed
vim.opt.expandtab = true

-- Enable mouse in all modes
vim.opt.mouse = "a"

-- Remap :X to :x
vim.cmd([[
cnoreabbrev <expr> X ((getcmdtype() is# ':' && getcmdline() is# 'X')?('x'):('X'))
]])

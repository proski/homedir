-- Set leader key
vim.api.nvim_set_var("mapleader", "\\")

-- Load plugins
require("lazy_plugins")

-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup()

-- Load LSP defaults from nvim-lspconfig.lua
require("nvim-lspconfig")

-- Enable cursor wrapping
vim.api.nvim_set_option("whichwrap", "b,s,<,>,[,]")

-- Use 4 spaces when indenting with '>'
vim.api.nvim_set_option("shiftwidth", 4)

-- Insert spaces when Tab is pressed
vim.api.nvim_set_option("expandtab", true)

-- Enable mouse in all modes
vim.api.nvim_set_option("mouse", "a")

-- Remap :Q and :X to lower case
vim.cmd([[
cnoreabbrev <expr> Q ((getcmdtype() . getcmdline() is# ':Q')?('q'):('Q'))
cnoreabbrev <expr> X ((getcmdtype() . getcmdline() is# ':X')?('x'):('X'))
]])

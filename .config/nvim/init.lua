-- Set leader key
vim.api.nvim_set_var("mapleader", "\\")

-- Load plugins
require("lazy_plugins")

-- Set color scheme
vim.cmd([[colorscheme tokyonight-night]])

-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "nil_ls", "rust_analyzer" },
})

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

vim.api.nvim_set_option("spelllang", "en_us")
vim.api.nvim_set_option("spell", true)

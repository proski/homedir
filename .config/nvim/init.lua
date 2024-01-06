-- Enable cursor wrapping
vim.opt.whichwrap = vim.opt.whichwrap + "<,>,h,l,[,]"

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

-- Add support for bash/emacs Ctrl keys in insert mode
vim.api.nvim_set_keymap("i", "<C-a>", "<ESC>0i", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-d>", "<DEL>", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-e>", "<ESC>A", { noremap = true })

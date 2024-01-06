-- Install Packer is not already installed
require("ensure_packer")

-- Load plugins
require("plug")

-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup()

-- Rust tool setup
local rt = require("rust-tools")
rt.setup({
    server = {
        on_attach = function(_, bufnr)
            -- Hover actions
            vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
        end,
    },
})

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

-- Add support for bash/emacs Ctrl keys in insert mode
vim.api.nvim_set_keymap("i", "<C-a>", "<ESC>0i", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-d>", "<DEL>", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-e>", "<ESC>A", { noremap = true })

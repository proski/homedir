local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

return require("lazy").setup({
    -- Mason, the Neovim package manager
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",

    -- Configurations for Language Server Protocol
    "neovim/nvim-lspconfig",

    -- Rust tools
    "simrat39/rust-tools.nvim",

    -- Completion framework
    "hrsh7th/nvim-cmp",

    -- LSP completion source
    "hrsh7th/cmp-nvim-lsp",

    -- Useful completion sources
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "hrsh7th/cmp-vsnip",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-buffer",
    "hrsh7th/vim-vsnip",
})

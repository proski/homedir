return require("packer").startup(function()
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")

    use("neovim/nvim-lspconfig")
    use("simrat39/rust-tools.nvim")
end)

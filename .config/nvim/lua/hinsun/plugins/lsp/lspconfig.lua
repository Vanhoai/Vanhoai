local installed = {
    "clangd",        -- C/C++ LSP server
    "cmake",         -- CMake LSP server
    "rust_analyzer", -- Rust LSP server
}

return {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    opts = { ensure_installed = installed },
    config = function()
        local lspconfig = require("lspconfig")
        local mason_lspconfig = require("mason-lspconfig")

        local keymap = vim.keymap

        -- Setup mason-lspconfig
        mason_lspconfig.setup({
            ensure_installed = installed,
            automatic_installation = true,
        })
    end,
}

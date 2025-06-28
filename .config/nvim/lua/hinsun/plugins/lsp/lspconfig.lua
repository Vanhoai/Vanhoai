return {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    config = function()
        local mason_lspconfig = require("mason-lspconfig")

        -- Setup mason-lspconfig
        mason_lspconfig.setup({
            ensure_installed = {
                "clangd",        -- C/C++ LSP server
                "cmake",         -- CMake LSP server
                "pyright",       -- Python LSP server
                "ruff",          -- Fast Python linter/formatter LSP
                "rust_analyzer", -- Rust LSP server
            },
        })
    end,
}

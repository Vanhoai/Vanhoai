return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        -- import mason
        local mason = require("mason")

        -- import mason-lspconfig
        local mason_lspconfig = require("mason-lspconfig")

        local mason_tool_installer = require("mason-tool-installer")

        -- enable mason and configure icons
        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        mason_lspconfig.setup({
            -- list of servers for mason to install
            ensure_installed = {
                -- C/C++
                "clangd", -- C/C++ LSP server
                "cmake",  -- CMake LSP server

                -- Python
                "pyright", -- Python LSP server
                "ruff",    -- Fast Python linter/formatter LSP

                -- Rust
                "rust_analyzer", -- Rust LSP server
            },
        })

        mason_tool_installer.setup({
            ensure_installed = {
                -- C/C++ tools
                "clang-format", -- C/C++ formatter
                "cpplint",      -- C++ linter
                "cmakelang",    -- CMake linter

                -- Python tools
                "black",   -- Python formatter
                "isort",   -- Python import sorter
                "flake8",  -- Python linter
                "mypy",    -- Python type checker
                "debugpy", -- Python debugger

                -- Rust tools
                "rustfmt", -- Rust formatter (thường đi kèm với rust toolchain)

                -- General tools
                "prettier", -- General formatter
                "stylua",   -- Lua formatter
                "eslint_d",
                "lua_ls",
                "emmet_ls",
            },
        })
    end,
}

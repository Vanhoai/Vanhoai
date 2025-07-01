return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        config = function()
            local transparent = false -- set to true if you would like to enable transparency

            require("tokyonight").setup({
                style = "night",
                transparent = transparent,
                styles = {
                    sidebars = transparent and "transparent" or "dark",
                    floats = transparent and "transparent" or "dark",
                },
            })

            vim.cmd.colorscheme "tokyonight"
        end,
    },
    {
        "catppuccin/nvim",
        lazy = false,
        name = "catppuccin",
        config = function()
            vim.cmd.colorscheme "catppuccin-mocha"
        end
    }
}

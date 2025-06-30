return {
    "MeanderingProgrammer/render-markdown.nvim",
    after = { "nvim-treesitter" },
    require = { "echasnovski/mini.nvim", opt = true },
    config = function()
        require("render-markdown").setup({})
    end,
}

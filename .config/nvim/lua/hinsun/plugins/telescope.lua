return {
    "nvim-telescope/telescope.nvim",
    branch = "master", -- using master to fix issues with deprecated to definition warnings
    -- '0.1.x' for stable ver.
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
        "andrew-george/telescope-themes",
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")
        local builtin = require("telescope.builtin")

        telescope.load_extension("fzf")
        telescope.load_extension("themes")

        telescope.setup({
            defaults = {
                path_display = { "smart" },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-j>"] = actions.move_selection_next,
                    },
                },
            },
            extensions = {
                themes = {
                    enable_previewer = true,
                    enable_live_preview = true,
                    persist = {
                        enabled = true,
                        path = vim.fn.stdpath("config") .. "/lua/colorscheme.lua",
                    },
                },
            },
        })

        -- set keymaps
        local keymap = vim.keymap -- for conciseness

        keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
        keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
        keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
        keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })

        keymap.set("n", "<leader>st", "<cmd>Telescope themes<CR>", {
            noremap = true,
            silent = true,
            desc = "Theme Switcher"
        })
    end,
}

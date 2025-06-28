local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })

keymap.set("n", "J", "mzJ`z")

keymap.set("n", "<leader>d", "<C-d>zz", { desc = "move down in buffer with cursor centered" })
keymap.set("n", "<leader>u", "<C-u>zz", { desc = "move up in the buffer with cursor centered" })

keymap.set("n", "<n>", "nzzzv", { desc = "next search result with centering" })
keymap.set("n", "<N>", "Nzzzv", { desc = "previous search result with centering" })

keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

keymap.set("x", "<leader>p", [["_dP]])
keymap.set("v", "p", '"_dp', opts)
keymap.set("n", "<leader>Y", [["+Y]], opts)
keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Move cursor to start or end of line
keymap.set("n", "<S-Left>", "^", { desc = "insert cursor to start of line" })
keymap.set("n", "<S-Right>", "$", { desc = "insert cusor to end of line" })

-- Remove highlight after search
keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "Clear search hl", silent = true })
keymap.set("i", "<C-c>", "<Esc>")

-- Tab manager
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })                     -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })              -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })                     --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })                 --  go to previous tab

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })                   -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })                 -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })                    -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })               -- close current split window


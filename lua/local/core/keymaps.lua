local opts = { noremap = true, silent = true }

--Remap space as leader key
local key = vim.keymap -- for conciseness
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- general keymaps

key.set("i", "jk", "<ESC>")   -- chord jk keys instead of using esc key to exit insert mode

key.set("n", "x", '"_x')  -- stop a deleted characture from going into paste buffer

key.set("n", "<leader>nh", ":nohl<CR>")  -- clear highlighted search hit


 
----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
key.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
key.set("n", "<leader>e", ":NvimTreeToggle<CR>")  -- Toggle file explorer pane






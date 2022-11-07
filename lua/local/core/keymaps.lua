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

-----------------------
-- general keymaps
-----------------------

key.set("i", "jk", "<ESC>")   -- chord jk keys instead of using esc key to exit insert mode
key.set("v", "jk", "<ESC>")   -- chord jk keys instead of using esc key to exit visual mode
key.set("n", "x", '"_x')  -- stop a deleted characture from going into paste buffer
key.set("n", "<leader>nh", ":nohl<CR>")  -- clear highlighted search hit

-- window management
key.set("n", "<leader>sv", "<C-w>v") -- split window vertically
key.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
key.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
key.set("n", "<leader>sx", ":close<CR>") -- close current split window

key.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
key.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
key.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
key.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

key.set("v", "<Tab>", ">gv") -- Tab to increase indent of visual selection
key.set("v", "<S-Tab>", "<gv") -- Shift-tab to decrease indent of visual selelction

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
key.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
key.set("n", "<leader>e", ":NvimTreeToggle<CR>")  -- Toggle file explorer pane






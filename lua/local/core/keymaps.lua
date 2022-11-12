local opts = { noremap = true, silent = true }
local key = vim.keymap -- for conciseness

--Remap space as leader key
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

key.set("i", "jk", "<ESC>")                         -- chord jk keys instead of using esc key to exit insert mode
key.set("v", "jk", "<ESC>")                         -- chord jk keys instead of using esc key to exit visual mode
key.set("n", "x", '"_x')                            -- stop a deleted characture from going into paste buffer
key.set("n", "<leader>nh", ":nohl<CR>")             -- clear highlighted search hit

-- window management
key.set("n", "<leader>sv", "<C-w>v")                -- split window vertically
key.set("n", "<leader>sh", "<C-w>s")                -- split window horizontally
key.set("n", "<leader>se", "<C-w>=")                -- make split windows equal width & height
key.set("n", "<leader>sx", ":close<CR>")          -- close current split window


key.set("v", "<Tab>", ">gv")                        -- Tab to increase indent of visual selection
key.set("v", "<S-Tab>", "<gv")                      -- Shift-tab to decrease indent of visual selelction

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
key.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts)  -- toggle split window maximization

-- nvim-tree
key.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)    -- Toggle file explorer pane

key.set("n", "<leader>z", ":ZenMode<CR>", opts)     -- Toggle file explorer pane

-- Navigate buffers
key.set("n", "<S-l>", ":bnext<CR>", opts)
key.set("n", "<S-h>", ":bprevious<CR>", opts)
key.set("n", "<S-x>", ":bdelet!<CR>", opts)

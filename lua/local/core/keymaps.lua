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


-- telescope
key.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
key.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
key.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
key.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
key.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
key.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
key.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
key.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
key.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

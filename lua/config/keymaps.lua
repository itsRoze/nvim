-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local bind = vim.keymap.set

-- ============= Basic Keymaps =============

-- Auto indent pasted text
bind("n", "p", "]p")
bind("n", "P", "[p")
bind("n", "(", "%")
bind("n", ")", "%")
bind("n", "<TAB>", "%")

-- turn off direction keyboard, force yourself use `hjkl` !!!
bind("n", "<Left>", "<Nop>")
bind("n", "<Right>", "<Nop>")
bind("n", "<Up>", "<Nop>")
bind("n", "<Down>", "<Nop>")

-- Clear search highlights
bind("n", "<leader>nh", ":noh<CR>", { noremap = true, silent = true, desc = "Clear search highlights" })

-- ============= Plugin Keymaps =============
-- Telescope
bind("n", "<leader>sx", require("telescope.builtin").resume, { noremap = true, silent = true, desc = "Resume" })

-- overwrite lazyvim mappings with vim-tmux-navigator mappings
-- see: https://github.com/christoomey/vim-tmux-navigator/blob/master/plugin/tmux_navigator.vim
bind("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
bind("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
bind("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
bind("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>")
bind("n", "<C-\\>", "<cmd>TmuxNavigatePrevious<cr>")

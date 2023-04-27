-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local bind = vim.keymap.set
local opts = { noremap = true, silent = true }

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

-- ============= Plugin Keymaps =============
-- Telescope
bind("n", "<leader>sx", require("telescope.builtin").resume, { noremap = true, silent = true, desc = "Resume" })

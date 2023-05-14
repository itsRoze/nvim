-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- LuaSnip Snippet History Fix for tab issue (Seems to work really well, I think.)
local luasnip_fix_augroup = vim.api.nvim_create_augroup("MyLuaSnipHistory", { clear = true })
vim.api.nvim_create_autocmd("ModeChanged", {
  pattern = "*",
  callback = function()
    if
      -- switched from select mode to normal mode or switched from insert mode
      -- AND previously inside a snipped
      -- AND not currently jumping to another snippet
      ((vim.v.event.old_mode == "s" and vim.v.event.new_mode == "n") or vim.v.event.old_mode == "i")
      and require("luasnip").session.current_nodes[vim.api.nvim_get_current_buf()]
      and not require("luasnip").session.jump_active
    then
      require("luasnip").unlink_current()
    end
  end,
  group = luasnip_fix_augroup,
})

-- Open folds by default
-- local treesitter_au = vim.api.nvim_create_augroup("treesitter_au", { clear = true })
-- vim.api.nvim_create_autocmd("BufReadPost,FileReadPost", {
--   pattern = "*",
--   callback = function()
--     vim.cmd("normal zx")
--     vim.cmd("normal zR")
--   end,
--   group = treesitter_au,
-- })

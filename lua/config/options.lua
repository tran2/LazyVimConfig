-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.swapfile = false
opt.background = "light"
opt.textwidth = 100
opt.autowrite = true

-- Some servers have issues with backup files, see #649
vim.opt.backup = false
vim.opt.writebackup = false

-- Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
-- delays and poor user experience
vim.opt.updatetime = 300

-- Always show the signcolumn, otherwise it would shift the text each time
-- diagnostics appeared/became resolved
vim.opt.signcolumn = "yes"

-- local keyset = vim.keymap.set
-- -- Autocomplete
-- function _G.check_back_space()
--   local col = vim.fn.col(".") - 1
--   return col == 0 or vim.fn.getline("."):sub(col, col):match("%s") ~= nil
-- end

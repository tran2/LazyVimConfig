-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps her
vim.keymap.set("i", "jk", "<Esc>", { desc = "Escape" })

function CopyCurrentBufferPath()
  local currentBuff = vim.api.nvim_get_current_buf()
  local fname = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(currentBuff), ":p:.")

  vim.fn.setreg("+", fname)
end

local function setTmuxNavKeys()
  local nvim_tmux_nav = require("nvim-tmux-navigation")

  nvim_tmux_nav.setup({
    disable_when_zoomed = true, -- defaults to false
  })

  vim.keymap.set("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
  vim.keymap.set("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
  vim.keymap.set("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
  vim.keymap.set("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
  vim.keymap.set("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
  vim.keymap.set("n", "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)
end

vim.keymap.set("n", "<leader>bac", "<cmd>:lua CopyCurrentBufferPath()<CR>", { desc = "Copy current file path" })

-- Set tmux keys here due to vim lazy update causing plugin's keys to be overwritten
-- https://github.com/LazyVim/LazyVim/commit/f892ba5cffe8fcac724ad6b801e0824b391fa037
setTmuxNavKeys()

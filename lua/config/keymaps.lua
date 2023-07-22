-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps her
vim.keymap.set("i", "jk", "<Esc>", { desc = "Escape" })

function CopyCurrentBufferPath()
  local currentBuff = vim.api.nvim_get_current_buf()
  local fname = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(currentBuff), ":p:.")

  vim.fn.setreg("+", fname)
end

vim.keymap.set("n", "<leader>bac", "<cmd>:lua CopyCurrentBufferPath()<CR>", { desc = "Copy current file path" })

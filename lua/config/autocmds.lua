-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- -- Disable autoformat for lua files
vim.api.nvim_create_autocmd({ "BufRead" }, {
  pattern = { "prism-ui-ntnx-react-ui-app/*" },
  callback = function()
    local data = {
      buf = vim.fn.expand("<abuf>"),
      file = vim.fn.expand("<afile>"),
      match = vim.fn.expand("<amatch>"),
    }
    vim.schedule(function()
      print("test")
      print(vim.inspect(data))
    end)
    -- vim.b.autoformat = false
  end,
})

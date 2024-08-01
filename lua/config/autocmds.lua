-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--

local function prequire(...)
  local status, lib = pcall(require, ...)
  if status then
    return lib
  end
  --Library failed to load, so perhaps return `nil` or something?
  return nil
end

prequire("config.local")

-- add a file autoformat-ignore with content like {
--   "**/node_modules/*",
-- }
-- to ignore format after save
local ignore = prequire("config.autoformat-ignore")
local ignore_pattern = {
  "**/node_module/**",
}
if ignore then
  ignore_pattern = vim.tbl_extend("force", ignore_pattern, ignore)
end
-- print(vim.inspect(ignore_pattern))

vim.api.nvim_create_autocmd({ "BufRead" }, {
  pattern = ignore_pattern,
  callback = function()
    -- local data = {
    --   buf = vim.fn.expand("<abuf>"),
    --   file = vim.fn.expand("<afile>"),
    --   match = vim.fn.expand("<amatch>"),
    -- }
    vim.schedule(function()
      -- print(vim.inspect(data))
      require("notify")("Turning autoformat off for this")
    end)

    vim.b.autoformat = false
  end,
})

-- AutoSave
vim.api.nvim_create_autocmd("FocusLost", { pattern = "*", command = ":wa", desc = "Autosave on FocusLost" })

--file Templating
vim.api.nvim_create_autocmd({ "BufNewFile" }, {
  pattern = "*.jsx",
  callback = function()
    vim.cmd("0read ~/.config/nvim/templates/skeleton-copyright.js")
  end,
})

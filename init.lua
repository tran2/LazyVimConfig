-- bootstrap lazy.nvim, LazyVim and your plugins
if vim.g.vscode then
  -- VSCode extension
  require("vscode")
else
  require("config.lazy")
end

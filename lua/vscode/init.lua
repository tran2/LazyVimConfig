require("vscode.plugins")
require("config.keymaps")
require("config.options")

local keyset = vim.keymap.set

-- commentary https://github.com/vscode-neovim/vscode-neovim/wiki/Plugins#vim-commentary
keyset("x", "gc", "<Plug>VSCodeCommentary")
keyset("n", "gc", "<Plug>VSCodeCommentary")
keyset("o", "gc", "<Plug>VSCodeCommentary")
keyset("n", "gcc", "<Plug>VSCodeCommentaryLine")

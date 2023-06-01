local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
  "asvetliakov/vim-easymotion",
  "folke/which-key.nvim",
  {
    "machakann/vim-sandwich",
    init = function()
      vim.cmd("highlight OperatorSandwichBuns guifg='#aa91a0' gui=underline ctermfg=172 cterm=underline")
      vim.cmd("highlight OperatorSandwichChange guifg='#edc41f' gui=underline ctermfg='yellow' cterm=underline")
      vim.cmd("highlight OperatorSandwichAdd guibg='#b1fa87' gui=none ctermbg='green' cterm=none")
      vim.cmd("highlight OperatorSandwichDelete guibg='#cf5963' gui=none ctermbg='red' cterm=none")
    end,
  },
  -- {
  --   "unblevable/quick-scope",
  --   init = function()
  --     vim.cmd("highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline")
  --     vim.cmd("highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline")
  --   end,
  -- },
})

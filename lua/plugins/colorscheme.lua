return {
  -- add gruvbox
  -- { "ellisonleao/gruvbox.nvim" },
  -- "lifepillar/vim-solarized8",
  -- {
  --   "ishan9299/nvim-solarized-lua",
  --   config = function()
  --     vim.cmd("colorscheme solarized")
  --   end,
  -- },
  {
    "Shatur/neovim-ayu",
    config = function()
      vim.cmd("colorscheme ayu-mirage")
    end,
  },
  -- Configure LazyVim to load gruvbox
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "solarized-high",
  --   },
  -- },
}

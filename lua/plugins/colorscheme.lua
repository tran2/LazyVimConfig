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
      require("ayu").setup({
        mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
        terminal = true, -- Set to `false` to let terminal manage its own colors.
        overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
      })

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

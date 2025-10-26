function Quick_switcher_find_jsFileOnly()
  -- use -vE for regex to inverse match so that it only matches Component.ts and not .test.ts files
  -- this is because mac grep does not have -P for perl regex
  require("nvim-quick-switcher").find(
    "\\.test\\.|\\.stories.\\|\\.spec\\.",
    { regex = true, prefix = "short", regex_type = "vE", extra_find_args = " -type f" }
  )
end

return {
  {
    "rgroli/other.nvim",
    opts = {
      mappings = {
        "react",
      },
    },
    keys = {
      {
        "<leader>lt",
        "<cmd>:Other test<CR>",
        noremap = true,
        silent = true,
      },
    },

  --   config = function()
  --     require("neotest").setup({
  --       adapters = {
  --         require("neotest-jest")({
  --           jestCommand = "npm test --",
  --           jestConfigFile = "jest.config.ts",
  --           env = { CI = false },
  --           cwd = function(path)
  --             return vim.fn.getcwd()
  --           end,
  --         }),
  --       },
  --     })
  --   end,
  },
  -- {
  --   "tran2/nvim-quick-switcher",
  --   keys = {
  --     {
  --       "<leader>js",
  --       "<cmd>:lua require('nvim-quick-switcher').find('.+css|.+scss|.+sass|.+less', { regex = true, prefix='short' })<CR>",
  --       desc = "switch to style",
  --       noremap = true,
  --       silent = true,
  --     },
  --     {
  --       "<leader>jc",
  --       "<cmd>:lua require('nvim-quick-switcher').find('(.+stories).(jsx|js)$', { regex = true, prefix='short' })<CR>",
  --       desc = "switch to style",
  --       noremap = true,
  --       silent = true,
  --     },
  --     {
  --       "<leader>jt",
  --       "<cmd>:lua require('nvim-quick-switcher').find('(.+test|.+spec).(jsx|js)$', { regex = true, prefix='short' })<CR>",
  --       desc = "switch to test or spec file",
  --       noremap = true,
  --       silent = true,
  --     },
  --     {
  --       "<leader>jj",
  --       "<cmd>:lua Quick_switcher_find_jsFileOnly()<CR>",
  --       desc = "switch to jsx or js",
  --       noremap = true,
  --       silent = true,
  --     },
  --   },
  -- },
  -- Note for harpoon
  -- debug run with HARPOON_LOG=trace
}

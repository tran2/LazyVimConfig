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
    "tran2/nvim-quick-switcher",
    keys = {
      {
        "<leader>jc",
        "<cmd>:lua require('nvim-quick-switcher').find('.+css|.+scss|.+sass|.+less', { regex = true, prefix='short' })<CR>",
        desc = "switch to style",
        noremap = true,
        silent = true,
      },
      {
        "<leader>js",
        "<cmd>:lua require('nvim-quick-switcher').find('(.+stories).(jsx|js)$', { regex = true, prefix='short' })<CR>",
        desc = "switch to style",
        noremap = true,
        silent = true,
      },
      {
        "<leader>jt",
        "<cmd>:lua require('nvim-quick-switcher').find('(.+test|.+spec).(jsx|js)$', { regex = true, prefix='short' })<CR>",
        desc = "switch to test or spec file",
        noremap = true,
        silent = true,
      },
      {
        "<leader>jj",
        "<cmd>:lua Quick_switcher_find_jsFileOnly()<CR>",
        desc = "switch to jsx or js",
        noremap = true,
        silent = true,
      },
    },
  },
  -- debug run with HARPOON_LOG=trace
  -- {
  --   "ThePrimeagen/harpoon",
  -- keys = {
  --   {
  --     "<leader>ja",
  --     "<cmd>:lua require('harpoon.mark').add_file()<CR>",
  --     desc = "Add file to revisit later",
  --     noremap = true,
  --     silent = true,
  --   },
  --   {
  --     "<leader>jm",
  --     "<cmd>:lua require('harpoon.ui').toggle_quick_menu()<CR>",
  --     desc = "Toggle mark menu",
  --     noremap = true,
  --     silent = true,
  --   },
  --   {
  --     "<leader>jn",
  --     "<cmd>:lua require('harpoon.ui').nav_next()<CR>",
  --     desc = "Go to next mark",
  --     noremap = true,
  --     silent = true,
  --   },
  --   {
  --     "<leader>jp",
  --     "<cmd>:lua require('harpoon.ui').nav_prev()<CR>",
  --     desc = "Go to previous mark",
  --     noremap = true,
  --     silent = true,
  --   },
  --   {
  --     "<leader>j1",
  --     "<cmd>:lua require('harpoon.ui').nav_file(1)<CR>",
  --     desc = "Go to mark 1",
  --     noremap = true,
  --     silent = true,
  --   },
  --   {
  --     "<leader>j2",
  --     "<cmd>:lua require('harpoon.ui').nav_file(2)<CR>",
  --     desc = "Go to mark 2",
  --     noremap = true,
  --     silent = true,
  --   },
  --   {
  --     "<leader>j3",
  --     "<cmd>:lua require('harpoon.ui').nav_file(3)<CR>",
  --     desc = "Go to mark 3",
  --     noremap = true,
  --     silent = true,
  --   },
  --   {
  --     "<leader>j4",
  --     "<cmd>:lua require('harpoon.ui').nav_file(4)<CR>",
  --     desc = "Go to mark 4",
  --     noremap = true,
  --     silent = true,
  --   },
  -- },
  -- config = function()
  --   require("harpoon").setup({
  --     menu = {
  --       width = vim.api.nvim_win_get_width(0) - 30,
  --     },
  --   })
  -- end,
  -- },
}

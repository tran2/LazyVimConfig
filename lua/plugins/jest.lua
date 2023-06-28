-- https://github.com/David-Kunz/jester
return {
  {
    "nvim-neotest/neotest-jest",
    -- keys = {
    --   { "<leader>tr", "<cmd>lua require'jester'.run()<cr>", desc = "Run nearest test under cursor" },
    --   { "<leader>tf", "<cmd>lua require'jester'.run_file()<cr>", desc = "Run file" },
    --   { "<leader>tl", "<cmd>lua require'jester'.run_last()<cr>", desc = "Run last" },
    -- },
    -- opts = {
    --   path_to_jest_run = "./node_modules/.bin/jest", -- used to run tests
    --   path_to_jest_debug = "./node_modules/.bin/jest", -- used for debugging
    -- },
    -- requires = {
    --   "haydenmeade/neotest-jest",
    -- },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-jest")({
            jestCommand = "npm test --",
            jestConfigFile = "jest.config.ts",
            env = { CI = false },
            cwd = function(path)
              return vim.fn.getcwd()
            end,
          }),
        },
      })
    end,
  },
  {
    "nvim-neotest/neotest",
    opts = { adapters = { "neotest-jest" } },
  },
}

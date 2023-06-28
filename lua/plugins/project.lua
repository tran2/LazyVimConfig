return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      { "nvim-telescope/telescope-project.nvim" },
    },
    keys = {
      { "<leader>p", "<cmd>lua require'telescope'.extensions.project.project{}<cr>", desc = "Telescope Project" },
    },
    opts = {
      defaults = {
        path_display = {
          truncate = 3,
          -- shorten = {
          --   len = 3,
          --   exclude = { 1, -1 },
          -- },
        },
      },
      extensions = {
        project = {
          base_dirs = { { path = "~/dev", max_depth = 4 } },
          -- on_project_selected = function(prompt_bufnr)
          --   -- Do anything you want in here. For example:
          --   project_actions.change_working_directory(prompt_bufnr, false)
          -- end,
        },
      },
    },
    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)
      telescope.load_extension("project")
      telescope.load_extension("fzf")
    end,
  },
}

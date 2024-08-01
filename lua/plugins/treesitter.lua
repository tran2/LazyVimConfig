return {
  {
    "nvim-treesitter/playground",
    config = function()
      require("nvim-treesitter.configs").setup({
        playground = {
          enable = true,
          -- disable = {},
          -- updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
          -- persist_queries = false, -- Whether the query persists across vim sessions
          -- keybindings = {
          --   toggle_query_editor = "o",
          --   toggle_hl_groups = "i",
          --   toggle_injected_languages = "t",
          --   toggle_anonymous_nodes = "a",
          --   toggle_language_display = "I",
          --   focus_language = "f",
          --   unfocus_language = "F",
          --   update = "R",
          --   goto_node = "<cr>",
          --   show_help = "?",
          -- },
        },
      })
    end,
  },

  -- from example
  -- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/treesitter.lua
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- set the gcc compiler if needed
      require("nvim-treesitter.install").compilers = { "gcc-14" }
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "tsx",
        "typescript",
      })
    end,
  },
}

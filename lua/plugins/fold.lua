return {
  "kevinhwang91/nvim-ufo",
  dependencies = {
    "kevinhwang91/promise-async",
  },
  keys = {
    {
      "zR",
      "<cmd>:lua require('ufo').openAllFolds()<CR>",
      desc = "UFO openAllFolds",
    },
    {
      "zM",
      "<cmd>:lua require('ufo').closeAllFolds()<CR>",
      desc = "UFO closeAllFolds",
    },
    {
      "zr",
      "<cmd>:lua require('ufo').openFoldsExceptKinds()<CR>",
      desc = "UFO open fold",
    },
    {
      "zm",
      "<cmd>:lua require('ufo').closeFoldsWith()<CR>",
      desc = "UFO close folds With",
    },
  },
  build = ":TSUpdate",
  init = function()
    vim.o.foldcolumn = "1" -- '0' is not bad
    vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true
    vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
  end,
  config = function()
    require("ufo").setup({
      provider_selector = function(bufnr, filetype, buftype)
        return { "treesitter", "indent" }
      end,
    })
  end,
}

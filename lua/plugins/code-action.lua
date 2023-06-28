-- https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#textDocument_rename
-- function RenameVariable()
--   local position_params = vim.lsp.util.make_position_params()
--   local new_name = vim.fn.input("New Name > ")
--   position_params.newName = new_name
--
--   -- print(vim.inspect(position_params))
--
--   -- callback is :help lsp-handler
--   vim.lsp.buf_request(0, "textDocument/rename", position_params, function(err, result, context)
--     print("Hello")
--     print(vim.inspect(result))
--     local entries = {}
--     if result.changes then
--       -- pairs is used for listing over a dictionary, use ipair for numerical indexes
--       print(vim.inspect(result.changes))
--       for uri, edits in pairs(result.changes) do
--         local bufnr = vim.uri_to_bufnr(uri)
--         for _, edit in ipairs(edits) do
--           local start_line = edit.range.start.line + 1
--           local line = vim.api.nvim_buf_get_lines(bufnr, start_line - 1, start_line, false)[1]
--           table.insert(entries, {
--             bufnr = bufnr,
--             lnum = start_line,
--             col = edit.range.start.character + 1,
--             text = line,
--           })
--         end
--       end
--     end
--
--     vim.fn.setqflist(entries, "r")
--
--     -- just calling vim built in handler
--     vim.lsp.handlers["textDocument/rename"](err, method, result)
--   end)
-- end
--
-- P = function(v)
--   print(vim.inspect(v))
--   return v
-- end
--

return {
  {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    keys = {
      {
        "<leader>cg",
        "<cmd>lua require('neogen').generate()<CR>",
        desc = "Neogen generate docs",
        noremap = true,
        silent = true,
      },
    },
    config = true,
    -- Uncomment next line if you want to follow only stable versions
    -- version = "*"
  },
  {
    "Everduin94/nvim-quick-switcher",
    keys = {
      {
        "<leader>fss",
        "<cmd>:lua require('nvim-quick-switcher').find('.+css|.+scss|.+sass|.+less', { regex = true, prefix='short' })<CR>",
        desc = "switch to style",
        noremap = true,
        silent = true,
      },
      {
        "<leader>fst",
        "<cmd>:lua require('nvim-quick-switcher').find('(.+test|.+spec).(jsx|js)$', { regex = true, prefix='full' })<CR>",
        desc = "switch to test or spec file",
        noremap = true,
        silent = true,
      },
      {
        "<leader>fsj",
        "<cmd>:lua require('nvim-quick-switcher').find('(js|jsx)$', { regex = true, prefix='short' })<CR>",
        desc = "switch to jsx or js",
        noremap = true,
        silent = true,
      },
    },
  },
}

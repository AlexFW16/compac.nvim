local M = {}
local comment = require("compac.dsl.comment")
require("compac.dsl.filetype")

function M.setup()
  vim.api.nvim_create_autocmd("FileType", {
    pattern = "compacdsl",
    callback = function()
      vim.bo.commentstring = "// %s"
    end,
  })
end

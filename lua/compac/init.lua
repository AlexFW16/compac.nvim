local M = {}
local comment = require("compac.dsl.comment")
require("compac.dsl.filetype")

function M.setup()
	vim.notify("compac.nvim loaded!", vim.log.levels.INFO)

	vim.api.nvim_create_autocmd("FileType", {
		pattern = "compacdsl",
		callback = function()
			vim.bo.commentstring = "// %s"
		end,
	})
end

return M

-- Returns a module for toggling comments in our current DSL

local M = {}

-- Toggle comment on current line

function M.toggle_comment()
  local line = vim.api.nvim_get_current_line()
  if line:match("^%s*//") then
    vim.api.nvim_set_current_line(line:gsub("^(%s*)//%s?", "%1"))
  else
    vim.api.nvim_set_current_line("// " .. line)
  end
end

-- Toggle comment on selected lines
function M.toggle_visual()
  local start_line = vim.fn.line("v")
  local end_line = vim.fn.line(".")

  if start_line > end_line then
    start_line, end_line = end_line, start_line
  end

  for l = start_line, end_line do
    local line = vim.fn.getline(l)
    if line:match("^%s*//") then
      vim.fn.setline(l, line:gsub("^(%s*)//%s?", "%1"))
    else
      vim.fn.setline(l, "// " .. line)
    end
  end
end

return M

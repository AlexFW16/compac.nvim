-- Ensusres that the 'compac' plugin is loaded and sets it up if available

local ok, compac = pcall(require, "compac")
if ok and compac then
  compac.setup()
else
  vim.notify("Failed to load compac.nvim: " .. tostring(compac), vim.log.levels.ERROR)
end

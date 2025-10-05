-- Ensusres that the 'compac' plugin is loaded and sets it up if available

if pcall(require, "compac") then
  require("compac").setup()
end

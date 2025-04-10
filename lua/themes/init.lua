-- custom/init.lua
-- Register custom theme
local present, base46 = pcall(require, "base46")

if present then
  base46.add_theme("custom_theme", require("lua.themes.custom_theme"))
end

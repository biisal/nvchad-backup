local M = {}

M.base_30 = {
  white = "#FFFFFF",
  darker_black = "#191828",
  black = "#1E1D2D", --  nvim bg
  black2 = "#252434",
  one_bg = "#2d2c3c", -- real bg of onedark
  one_bg2 = "#363545",
  one_bg3 = "#3e3d4d",
  grey = "#474656",
  grey_fg = "#4e4d5d",
  grey_fg2 = "#555464",
  light_grey = "#605f6f",
  red = "#FF0031",
  baby_pink = "#FF0069",
  pink = "#FF0069",
  line = "#383747", -- for lines like vertsplit
  green = "#47FF9C",
  vibrant_green = "#47FF9C",
  nord_blue = "#8bc2f0",
  blue = "#89B4FA",
  yellow = "#FAE3B0",
  sun = "#ffe9b6",
  purple = "#d0a9e5",
  dark_purple = "#c7a0dc",
  teal = "#B5E8E0",
  orange = "#F8BD96",
  cyan = "#00FFEF",
  statusline_bg = "#232232",
  lightbg = "#2f2e3e",
  pmenu_bg = "#ABE9B3",
  folder_bg = "#0FC5ED",
  lavender = "#FFFFFF",
}

M.base_16 = {
  base00 = "#1E1D2D",
  base01 = "#282737",
  base02 = "#2f2e3e",
  base03 = "#383747",
  base04 = "#414050",
  base05 = "#bfc6d4",
  base06 = "#ccd3e1",
  base07 = "#D9E0EE",
  base08 = "#FF0069",
  base09 = "#FF9853",
  base0A = "#FFDA0B",
  base0B = "#47FF9C",
  base0C = "#89DCEB",
  base0D = "#89B4FA",
  base0E = "#CBA6F7",
  base0F = "#FF0069",
}

M.polish_hl = {
  ["@variable"] = { fg = M.base_30.lavender },
  ["@property"] = { fg = M.base_30.teal },
  ["@variable.builtin"] = { fg = M.base_30.red },
}

M.type = "dark"

-- Replace this line with the override_theme function for a custom theme
-- M = require("base46").override_theme(M, "catppuccin")

-- Instead, add this for a custom theme:
M.override_theme = function(colors, highlights)
  return colors, highlights
end

return M

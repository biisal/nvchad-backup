---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  hl_override = highlights.override,
  hl_add = highlights.add,

  transparency = true,
}

M.plugins = require "plugins"


return M

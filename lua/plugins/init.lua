local custom_plugins = require("plugins.custom_plugins")

local base_plugins = {
  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
  },
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}

for k, v in pairs(custom_plugins) do
    base_plugins[k] = v
end

return base_plugins

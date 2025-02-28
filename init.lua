require "core"

local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]

if custom_init_path then
  dofile(custom_init_path)
end

require("core.utils").load_mappings()

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

-- bootstrap lazy.nvim!
if not vim.loop.fs_stat(lazypath) then
  require("core.bootstrap").gen_chadrc_template()
  require("core.bootstrap").lazy(lazypath)
end

dofile(vim.g.base46_cache .. "defaults")
vim.opt.rtp:prepend(lazypath)
require "plugins"


vim.opt.clipboard = "unnamedplus"  -- Use system clipboard
vim.g.mapleader = " "  -- Set leader key to Space
vim.keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true })  -- Copy to clipboard
vim.diagnostic.config({
  virtual_text = true,
  update_in_insert = true, -- Enables showing diagnostics in insert mode
  severity_sort = true,
})


local null_ls = require("null-ls")
local b = null_ls.builtins

local opts = {
  sources = {
    -- b.diagnostics.mypy.with({
    --   extra_args = {
    --     "--disallow-untyped-defs",   -- Require function argument type annotations
    --     "--disallow-untyped-calls",  -- Disallow calling untyped functions
    --     "--disallow-incomplete-defs",-- Ensure function signatures are fully typed
    --     "--ignore-missing-imports"   -- Ignore missing imports
    --   },
    -- }),
    b.diagnostics.ruff,
  },
}

return opts


-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()


local lspconfig = require "lspconfig"
local util = require "lspconfig/util"
-- EXAMPLE
local servers = { "html", "cssls"  }
local nvlsp = require "nvchad.configs.lspconfig"

local on_attach = nvlsp.on_attach
local capabilities = nvlsp.capabilities


-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end


-- Typescript & Javascript lsp setup
for _ , lsp in ipairs({"vtsls" , "eslint"}) do
  lspconfig[lsp].setup{
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "json" , "html" },
    root_dir = util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),

  }
end


-- Python lsp Setup
lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "python" },
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "strict",
      },
      diagnosticSeverityOverrides = {
        reportMissingReturnType = "error",
      },
    },
  },
}

-- Golang lsp setup
lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { 'gopls' },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
}

lspconfig.taplo.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "toml" },
  settings = {
    evenBetterToml = {
      schema = {
        associations = {
          ["air.toml"] = "",  -- disable schema for air.toml
        }
      }
    }
  }
}

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }

lspconfig.tailwindcss.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "css", "scss", "less" , "typescriptreact" , "javascriptreact" , "html" },
}

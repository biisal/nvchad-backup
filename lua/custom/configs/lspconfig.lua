local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"
lspconfig.pyright.setup {
  on_attach = on_attach ,
  capabilities = capabilities,
  filetypes = {"python"},
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

lspconfig.gopls.setup {
on_attach = on_attach,
capabilities = capabilities,
cmd = {'gopls'},
  filetypes = {"go" , "gomod" , "gowork" , "gotmpl"},
  root_dir = util.root_pattern("go.work" , "go.mod" , ".git"),
}
lspconfig.vtsls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "json" },
  root_dir = util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
}


local plugins = {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup {
        ensure_installed = {
          "tailwindcss",  -- corrected from tailwindcss-language-server
          "gopls",
          "eslint",
          "ruff",
          "vtsls",
          "pyright",
          "html",
          "cssls",
          "taplo"
        },
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",     -- if you have `nvim-treesitter` installed
    dependencies = {
      "nvim-telescope/telescope.nvim",
      -- "ibhagwan/fzf-lua",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    opts = {
    },
  },
  {
    'Exafunction/windsurf.vim',
    event = 'BufEnter'
  }
}
return plugins

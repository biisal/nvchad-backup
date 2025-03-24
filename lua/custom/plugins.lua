local plugins = {
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {"python"},
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "tailwindcss-language-server",
        "gopls",
        "eslint-lsp",
        "ruff",
        "vtsls",
        "pyright",
        "html-lsp",
        "css-lsp",
      },
    },
  },
  {
    'Exafunction/codeium.vim',
    event = 'BufEnter'
  },
  {
    'folke/noice.nvim',
    event = "VeryLazy",
    opts = {
          },
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify'
    }
  }
  ,
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "vimpostor/vim-tpipeline",
    opts = {
    },
    config = function()
      vim.g.tpipeline_autoembed = 1
      vim.g.tpipeline_restore = 1
      vim.g.tpipeline_clearstl = 1
    end
  },
}
return plugins

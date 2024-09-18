return {
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
    opts = {},
  },
  {

    "rcarriga/nvim-notify",
    opts = {
      render = "compact",
    },
    lazy = false,
  },
  {
    "mrded/nvim-lsp-notify",
    dependencies = { "rcarriga/nvim-notify" },
    config = function()
      require("lsp-notify").setup {
        notify = require "notify",
      }
    end,
    lazy = false,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-vsnip" },
      { "hrsh7th/vim-vsnip" },
    },
    opts = function()
      local cmp = require "cmp"
      local conf = {
        sources = {
          { name = "nvim_lsp" },
          { name = "vsnip" },
          { name = "crates" },
        },
        snippet = {
          expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
          end,
        },
        completion = {
          completeopt = "menu,menuone,noselect",
        },
        mapping = cmp.mapping.preset.insert {
          ["<CR>"] = cmp.mapping.confirm { select = true },
        },
      }
      return conf
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "typescript-language-server",
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "pyright",
        "codelldb",
      },
    },
  },
}

-- lua/plugins/lsp.lua

return {
  {
    "williamboman/mason.nvim",

    opts = {},
  },

  {
    "neovim/nvim-lspconfig",

    dependencies = {
      "williamboman/mason-lspconfig.nvim",
    },

    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "vtsls",
          "eslint",
          "lua_ls",
        },
      })

      vim.lsp.config("vtsls", {
        settings = {
          typescript = {
            inlayHints = {
              parameterNames = {
                enabled = "literals",
              },
            },
          },

          javascript = {
            inlayHints = {
              parameterNames = {
                enabled = "literals",
              },
            },
          },
        },
      })

      vim.lsp.enable("vtsls")
      vim.lsp.enable("eslint")
      vim.lsp.enable("lua_ls")
    end,
  },
}

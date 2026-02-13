-- LSP configuration
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities());

vim.lsp.config("ts_ls", {
  capabilities = capabilities,
  settings = {
    typescript = {
      suggestions = {
        enabled = true
      },
      completion = {
        enableServerSideFuzzyMatch = true
      }
    },
    javascript = {
      suggestions = {
        enabled = true
      },
      completion = {
        enableServerSideFuzzyMatch = true
      }
    }
  },
})

vim.lsp.config("html", {
  capabilities = capabilities,
})

vim.lsp.config("cssls", {
  capabilities = capabilities,
})


vim.lsp.config("lua_ls", {
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
    }
  },
})

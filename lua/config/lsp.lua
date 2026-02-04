-- LSP configuration
local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Enable LSP for various languages with enhanced settings
lspconfig.tsserver.setup {
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
  }
}

lspconfig.html.setup {
  capabilities = capabilities,
}

lspconfig.cssls.setup {
  capabilities = capabilities,
}

lspconfig.lua_ls.setup {
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
  }
}

-- Mason-LSPConfig integration
require("mason-lspconfig").setup({
  ensure_installed = {
    "ts_ls",
    "eslint",
    "jsonls",
    "html",
    "cssls",
    "css_variables",
    "cssmodules_ls",
    "lua_ls",
    "graphql",
    "marksman",
    "yamlls",
    "stylelint_lsp",
    "wc_ls",
  },
  --automatic_enable = {
  --  exclude = {
  --    "graphql-language-service-cli"
  --  }
  --}
})

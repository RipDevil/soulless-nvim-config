require('mason-tool-installer').setup {
  ensure_installed = {
    "prettierd",
    "shellcheck",
    "markdownlint",
    "stylelint",
    "htmlhint",
  },
  integrations = {
    ['mason-lspconfig'] = true,
    ['mason-null-ls'] = false,
    ['mason-nvim-dap'] = false,
  },
}

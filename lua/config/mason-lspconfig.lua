-- Mason-LSPConfig integration
require("mason-lspconfig").setup({
  ensure_installed = {
    -- This should match what's in mason.lua ensure_installed list
    
    -- TypeScript/JavaScript
    "tsserver",
    "eslint",
    "jsonls",
    "html",
    "cssls",
    "tailwindcss",
    
    -- Python
    "pyright",
    "lua_ls",
    "graphql",
    "dockerfile-language-server",
    "yaml-language-server",
    "marksman",
    "jsonls",
    
    -- Additional tools
    "ruff",
    "mypy",
    "shellcheck",
    "shfmt",
    "luacheck",
    "graphql-language-service-cli",
    "hadolint",
    "yamllint",
    "markdownlint",
    "stylelint",
    "htmlhint",
  }
})

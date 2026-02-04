-- Mason configuration for automatic LSP installation
require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  },
  -- List of tools to install automatically on first run
  ensure_installed = {
    -- TypeScript/JavaScript LSPs
    "typescript-language-server",
    "eslint",
    "jsonls",
    "html",
    "cssls",
    "tailwindcss",
    
    -- Python
    "pyright",
    "flake8",
    "black",
    "ruff",
    "mypy",
    
    -- Shell
    "shellcheck",
    "shfmt",
    
    -- Lua
    "lua-language-server",
    "luacheck",
    
    -- GraphQL
    "graphql",
    "graphql-language-service-cli",
    
    -- Docker
    "dockerfile-language-server",
    "hadolint",
    
    -- YAML
    "yaml-language-server",
    "yamllint",
    
    -- JSON
    "jsonls",
    
    -- Markdown
    "marksman",
    "markdownlint",
    
    -- CSS
    "cssls",
    "stylelint",
    "prettier",
    
    -- HTML
    "html",
    "htmlhint",
    
    -- Generic formatters
    "prettier",
    "stylua",
    "black",
    "isort",
    "shfmt",
  }
})
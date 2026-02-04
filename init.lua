-- Neovim Configuration
-- This is the main entry point for the Neovim configuration

-- Load plugins first
require('config.plugins')

-- Load other configurations
require('config.options')
require('config.keymaps')
require('config.nvim-tree')
require('config.lualine')
require('config.telescope')
require('config.treesitter')
require('config.cmp')
require('config.lsp')
require('config.gitsigns')
require('config.null-ls')
require('config.autopairs')
require('config.mason')
require('config.mason-lspconfig')
require('config.theme-bearded-light')
-- require('config.ai')

-- Neovim Configuration
-- This is the main entry point for the Neovim configuration

-- Load plugins first
require('config.plugins')

-- Load other configurations
require('config.mason')
require('config.mason-lspconfig')
require('config.mason-tool-installer')
require('config.options')
require('config.keymaps')
require('config.nvim-tree')
require('config.lualine')
require('config.telescope')
require('config.treesitter')
require('config.cmp')
require('config.lsp')
require('config.gitsigns')
require('config.autopairs')
require('config.colorsheme')
require('config.formatter')

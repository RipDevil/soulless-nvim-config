-- Plugins configuration using lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_access(lazypath, "R") then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- UI and navigation
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- Language Server Protocol
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/nvim-cmp",
    },
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },

  -- Autocompletion
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip",
    },
  },

  -- Git integration
  {
    "lewis6991/gitsigns.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },

  -- Code formatting
  {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },

  -- Auto pairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
  },

  {
    "Ferouk/bearded-nvim",
    name = "bearded",
    priority = 1000,
    build = function()
      -- Generate helptags so :h bearded-theme works
      local doc = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy", "bearded", "doc")
      pcall(vim.cmd, "helptags " .. doc)
    end,
    config = function()
      require("bearded").setup({
        flavor = "milkshake-mango", -- any flavor slug
        transparent = false,
        bold = true,
        italic = true,
        dim_inactive = false,
        terminal_colors = true,
        on_highlights = function(set, palette, opts)
          -- optional override
          set("Normal", { fg = palette.ui.default })
        end,
      })
      vim.cmd.colorscheme("bearded")
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "bearded",
    },
  },


  -- AI Assistant (disabled)
  -- {
  --   "OlegKomarov/ai-nvim",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --   },
  -- },
})
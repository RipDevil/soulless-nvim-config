-- lua/plugins/treesitter.lua

return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",

    build = ":TSUpdate",

    opts = {
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",

        "javascript",
        "typescript",
        "tsx",

        "json",
        "jsonc",

        "html",
        "css",
        "scss",

        "bash",
        "markdown",
        "markdown_inline",
      },

      highlight = {
        enable = true,
      },

      indent = {
        enable = true,
      },
    },
  },
}

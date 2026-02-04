-- Treesitter configuration
require('nvim-treesitter').setup {
  ensure_installed = { "javascript", "typescript", "tsx", "html", "css", "lua", "python", "markdown" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  }
}

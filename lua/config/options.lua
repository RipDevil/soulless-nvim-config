-- Options configuration
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.showcmd = true
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 50
vim.opt.termguicolors = true
vim.opt.background = "light"





-- Set cursor color for better visibility in all modes
vim.opt.cursorline = true
-- Set cursor color using highlight groups for maximum visibility
vim.api.nvim_set_hl(0, "Cursor", { bg = "tomato", fg = "black" })
-- vim.api.nvim_set_hl(0, "CursorLine", { bg = "cyan" })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = "tomato" })
vim.opt.guicursor = "n:block,i:ver25,r:hor20,o:hor50"
-- vim.opt.colorcolumn = "80"

-- Enable tabline display
vim.opt.showtabline = 2


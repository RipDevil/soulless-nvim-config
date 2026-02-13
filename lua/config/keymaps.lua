-- Keymaps configuration
local opts = { noremap = true, silent = true }

-- Shortcuts for common actions
vim.keymap.set("n", "<leader>", "<NOP>", opts)
vim.g.mapleader = " "

-- Buffer navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Tab navigation
-- <leader>tn - New tab
-- <leader>tc - Close tab
-- <leader>tl - Next tab
-- <leader>th - Previous tab
-- <leader>t1 - First tab
-- <leader>t9 - Last tab
-- <leader>1-9 - Jump to specific tab
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", opts)  -- New tab
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", opts)  -- Close tab
vim.keymap.set("n", "<leader>tl", ":tabnext<CR>", opts)  -- Next tab
vim.keymap.set("n", "<leader>th", ":tabprevious<CR>", opts)  -- Previous tab
vim.keymap.set("n", "<leader>t1", ":tabfirst<CR>", opts)  -- First tab
vim.keymap.set("n", "<leader>t9", ":tablast<CR>", opts)  -- Last tab
vim.keymap.set("n", "<leader>1", ":tabn 1<CR>", opts)  -- Jump to tab 1
vim.keymap.set("n", "<leader>2", ":tabn 2<CR>", opts)  -- Jump to tab 2
vim.keymap.set("n", "<leader>3", ":tabn 3<CR>", opts)  -- Jump to tab 3
vim.keymap.set("n", "<leader>4", ":tabn 4<CR>", opts)  -- Jump to tab 4
vim.keymap.set("n", "<leader>5", ":tabn 5<CR>", opts)  -- Jump to tab 5
vim.keymap.set("n", "<leader>6", ":tabn 6<CR>", opts)  -- Jump to tab 6
vim.keymap.set("n", "<leader>7", ":tabn 7<CR>", opts)  -- Jump to tab 7
vim.keymap.set("n", "<leader>8", ":tabn 8<CR>", opts)  -- Jump to tab 8
vim.keymap.set("n", "<leader>9", ":tabn 9<CR>", opts)  -- Jump to tab 9

-- Save and quit
vim.keymap.set("n", "<leader>w", ":w<CR>", opts)
vim.keymap.set("n", "<leader>q", ":q<CR>", opts)
vim.keymap.set("n", "<leader>Q", ":q!<CR>", opts)

-- Plugin shortcuts
vim.keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>", opts)
vim.keymap.set("n", "<leader>fg", "<CMD>Telescope.live_grep<CR>", opts)
vim.keymap.set("n", "<leader>fb", "<CMD>Telescope buffers<CR>", opts)
vim.keymap.set("n", "<leader>fh", "<CMD>Telescope.help_tags<CR>", opts)

-- Navigation shortcuts (NEW)
vim.keymap.set("n", "gd", "<CMD>lua vim.lsp.buf.definition()<CR>", opts)  -- Go to definition
vim.keymap.set("n", "gi", "<CMD>lua vim.lsp.buf.implementation()<CR>", opts)  -- Go to implementation
vim.keymap.set("n", "gp", "<CMD>lua vim.lsp.buf.type_definition()<CR>", opts)  -- Go to type definition
vim.keymap.set("n", "gr", "<CMD>lua vim.lsp.buf.references()<CR>", opts)  -- Show references
vim.keymap.set("n", "K", "<CMD>lua vim.lsp.buf.hover()<CR>", opts)  -- Show hover info
vim.keymap.set("n", "gl", "<CMD>lua vim.diagnostic.open_float()<CR>", opts)

-- Nvim-tree shortcuts
vim.keymap.set("n", "<leader>e", "<CMD>NvimTreeToggle<CR>", opts)  -- Toggle tree
vim.keymap.set("n", "<leader>f", "<CMD>NvimTreeFindFile<CR>", opts)  -- Find current file

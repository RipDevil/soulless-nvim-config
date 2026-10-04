local map = vim.keymap.set

-- Save
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save" })

-- Quit
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })

-- File tree
map("n", "<leader>e", "<cmd>Neotree toggle<cr>", {
  desc = "File tree",
})

-- Find files
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", {
  desc = "Find files",
})

-- Search text
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", {
  desc = "Live grep",
})

-- Open buffers
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", {
  desc = "Buffers",
})

-- Help
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", {
  desc = "Help",
})

-- LSP
map("n", "gd", vim.lsp.buf.definition, {
  desc = "Go to definition",
})

map("n", "gr", vim.lsp.buf.references, {
  desc = "References",
})

map("n", "K", vim.lsp.buf.hover, {
  desc = "Hover",
})

map("n", "<leader>ca", vim.lsp.buf.code_action, {
  desc = "Code action",
})

map("n", "<leader>rn", vim.lsp.buf.rename, {
  desc = "Rename",
})

-- Format
map("n", "<leader>f", function()
  require("conform").format({
    async = true,
    lsp_fallback = true,
  })
end, {
  desc = "Format",
})

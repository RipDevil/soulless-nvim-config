-- Null-ls configuration - Final minimal version
-- This should resolve the E5113 error by avoiding direct source access issues
local null_ls = require("null-ls")

-- Simple setup with empty sources to prevent nil errors
null_ls.setup({
  sources = {},
})

-- If you want to add sources later, you can do it like this:
-- null_ls.setup({
--   sources = {
--     null_ls.sources.formatting.prettier,
--     null_ls.sources.formatting.eslint_d,
--     null_ls.sources.diagnostics.eslint_d,
--   },
-- })

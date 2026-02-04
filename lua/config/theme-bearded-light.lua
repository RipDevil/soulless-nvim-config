-- Custom Bearded Theme Light
-- Recreated Bearded theme with improved coloring distinctions
-- This theme enhances the visual distinction between keywords and components

-- Define the theme colors
local colors = {
  -- Base colors (following Bearded theme palette)
  bg = "#ffffff",        -- Light background
  fg = "#2d313b",        -- Dark foreground
  comment = "#8a8a8a",   -- Comment color
  red = "#e53935",       -- Red accent
  orange = "#f56518",    -- Orange accent
  yellow = "#d69e2e",    -- Yellow accent
  green = "#38a169",     -- Green accent
  teal = "#2a9d8f",      -- Teal accent
  blue = "#3182ce",      -- Blue accent
  indigo = "#667eea",    -- Indigo accent
  purple = "#805ad5",    -- Purple accent
  pink = "#e83e8c",      -- Pink accent
  gray = "#718096",      -- Gray accent
  light_gray = "#e2e8f0", -- Light gray
  dark_gray = "#2d313b",  -- Dark gray
}

-- Function to set highlight groups
local function set_highlights()
  -- Base syntax highlighting
  vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
  vim.api.nvim_set_hl(0, "NonText", { fg = colors.light_gray })
  vim.api.nvim_set_hl(0, "SpecialKey", { fg = colors.gray })
  vim.api.nvim_set_hl(0, "Comment", { fg = colors.comment })
  vim.api.nvim_set_hl(0, "Todo", { fg = colors.purple, bg = colors.bg, italic = true })
  
  -- Keywords and statements
  vim.api.nvim_set_hl(0, "Keyword", { fg = colors.blue, gui = "bold" })
  vim.api.nvim_set_hl(0, "Statement", { fg = colors.blue })
  vim.api.nvim_set_hl(0, "Conditional", { fg = colors.blue, gui = "bold" })
  vim.api.nvim_set_hl(0, "Repeat", { fg = colors.blue, gui = "bold" })
  vim.api.nvim_set_hl(0, "Label", { fg = colors.blue })
  vim.api.nvim_set_hl(0, "Operator", { fg = colors.blue })
  vim.api.nvim_set_hl(0, "Exception", { fg = colors.red })
  
  -- Functions and methods
  vim.api.nvim_set_hl(0, "Function", { fg = colors.green, gui = "bold" })
  vim.api.nvim_set_hl(0, "Method", { fg = colors.green })
  vim.api.nvim_set_hl(0, "Title", { fg = colors.green })
  
  -- Identifiers and variables
  vim.api.nvim_set_hl(0, "Identifier", { fg = colors.dark_gray })
  vim.api.nvim_set_hl(0, "Variable", { fg = colors.dark_gray })
  vim.api.nvim_set_hl(0, "Constant", { fg = colors.purple })
  vim.api.nvim_set_hl(0, "Number", { fg = colors.purple })
  vim.api.nvim_set_hl(0, "Boolean", { fg = colors.purple })
  vim.api.nvim_set_hl(0, "String", { fg = colors.green })
  vim.api.nvim_set_hl(0, "Character", { fg = colors.green })
  vim.api.nvim_set_hl(0, "SpecialChar", { fg = colors.green })
  
  -- Types and classes
  vim.api.nvim_set_hl(0, "Type", { fg = colors.teal, gui = "bold" })
  vim.api.nvim_set_hl(0, "StorageClass", { fg = colors.teal })
  vim.api.nvim_set_hl(0, "Structure", { fg = colors.teal })
  vim.api.nvim_set_hl(0, "Typedef", { fg = colors.teal })
  
  -- Preprocessor and includes
  vim.api.nvim_set_hl(0, "PreProc", { fg = colors.orange })
  vim.api.nvim_set_hl(0, "Include", { fg = colors.orange })
  vim.api.nvim_set_hl(0, "Define", { fg = colors.orange })
  vim.api.nvim_set_hl(0, "Macro", { fg = colors.orange })
  
  -- Tags and markup
  vim.api.nvim_set_hl(0, "Tag", { fg = colors.red })
  vim.api.nvim_set_hl(0, "Delimiter", { fg = colors.gray })
  vim.api.nvim_set_hl(0, "Special", { fg = colors.blue })
  vim.api.nvim_set_hl(0, "SpecialComment", { fg = colors.comment })
  
  -- Errors and warnings
  vim.api.nvim_set_hl(0, "Error", { fg = colors.red, bg = colors.bg })
  vim.api.nvim_set_hl(0, "ErrorMsg", { fg = colors.red, bg = colors.bg })
  vim.api.nvim_set_hl(0, "WarningMsg", { fg = colors.orange, bg = colors.bg })
  
  -- Search and highlights
  vim.api.nvim_set_hl(0, "Search", { fg = colors.bg, bg = colors.yellow })
  vim.api.nvim_set_hl(0, "IncSearch", { fg = colors.bg, bg = colors.orange })
  
  -- Line numbers and status
  vim.api.nvim_set_hl(0, "LineNr", { fg = colors.light_gray, bg = colors.bg })
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.blue, bg = colors.bg })
  vim.api.nvim_set_hl(0, "Folded", { fg = colors.gray, bg = colors.light_gray })
  vim.api.nvim_set_hl(0, "FoldColumn", { fg = colors.gray, bg = colors.light_gray })
  
  -- Status line
  vim.api.nvim_set_hl(0, "StatusLine", { fg = colors.fg, bg = colors.light_gray })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = colors.gray, bg = colors.light_gray })
  
  -- Visual selections
  vim.api.nvim_set_hl(0, "Visual", { bg = colors.light_gray })
  vim.api.nvim_set_hl(0, "VisualNOS", { bg = colors.light_gray })
  
  -- Cursor
  vim.api.nvim_set_hl(0, "Cursor", { bg = colors.blue, fg = colors.bg })
  vim.api.nvim_set_hl(0, "CursorLine", { bg = colors.light_gray })
  vim.api.nvim_set_hl(0, "CursorColumn", { bg = colors.light_gray })
  
  -- Diff highlighting
  vim.api.nvim_set_hl(0, "DiffAdd", { bg = "#c6f6d5" })
  vim.api.nvim_set_hl(0, "DiffChange", { bg = "#fefcbf" })
  vim.api.nvim_set_hl(0, "DiffDelete", { bg = "#fed7d7" })
  vim.api.nvim_set_hl(0, "DiffText", { bg = "#fefcbf" })
  
  -- Spell checking
  vim.api.nvim_set_hl(0, "SpellBad", { undercurl = true, sp = colors.red })
  vim.api.nvim_set_hl(0, "SpellCap", { undercurl = true, sp = colors.blue })
  vim.api.nvim_set_hl(0, "SpellRare", { undercurl = true, sp = colors.purple })
  vim.api.nvim_set_hl(0, "SpellLocal", { undercurl = true, sp = colors.teal })
  
  -- JavaScript/TypeScript specific
  vim.api.nvim_set_hl(0, "jsFunction", { fg = colors.green, gui = "bold" })
  vim.api.nvim_set_hl(0, "tsFunction", { fg = colors.green, gui = "bold" })
  vim.api.nvim_set_hl(0, "jsVariable", { fg = colors.dark_gray })
  vim.api.nvim_set_hl(0, "tsVariable", { fg = colors.dark_gray })
  vim.api.nvim_set_hl(0, "jsObjectKey", { fg = colors.blue })
  vim.api.nvim_set_hl(0, "tsObjectKey", { fg = colors.blue })
  
  -- React/JSX specific
  vim.api.nvim_set_hl(0, "jsxTagName", { fg = colors.teal, gui = "bold" })
  vim.api.nvim_set_hl(0, "jsxAttribute", { fg = colors.blue })
  vim.api.nvim_set_hl(0, "jsxCloseTag", { fg = colors.blue })
  
  -- HTML/XML specific
  vim.api.nvim_set_hl(0, "htmlTagName", { fg = colors.teal, gui = "bold" })
  vim.api.nvim_set_hl(0, "htmlArg", { fg = colors.blue })
  vim.api.nvim_set_hl(0, "htmlEndTag", { fg = colors.blue })
  
  -- CSS specific
  vim.api.nvim_set_hl(0, "cssTagName", { fg = colors.teal, gui = "bold" })
  vim.api.nvim_set_hl(0, "cssProp", { fg = colors.blue })
  vim.api.nvim_set_hl(0, "cssValue", { fg = colors.green })
  
  -- Markdown specific
  vim.api.nvim_set_hl(0, "markdownHeadingDelimiter", { fg = colors.blue })
  vim.api.nvim_set_hl(0, "markdownHeadingRule", { fg = colors.blue })
  vim.api.nvim_set_hl(0, "markdownUrl", { fg = colors.blue, underline = true })
  
  -- Git signs
  vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = colors.green })
  vim.api.nvim_set_hl(0, "GitSignsChange", { fg = colors.blue })
  vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = colors.red })
  
  -- LSP highlights
  vim.api.nvim_set_hl(0, "LspReferenceText", { bg = colors.light_gray })
  vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = colors.light_gray })
  vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = colors.light_gray })
  
  -- Tree-sitter highlights (if available)
  vim.api.nvim_set_hl(0, "@keyword", { fg = colors.blue, gui = "bold" })
  vim.api.nvim_set_hl(0, "@function", { fg = colors.green, gui = "bold" })
  vim.api.nvim_set_hl(0, "@variable", { fg = colors.dark_gray })
  vim.api.nvim_set_hl(0, "@type", { fg = colors.teal, gui = "bold" })
  vim.api.nvim_set_hl(0, "@string", { fg = colors.green })
  vim.api.nvim_set_hl(0, "@constant", { fg = colors.purple })
  vim.api.nvim_set_hl(0, "@comment", { fg = colors.comment })
  
  -- Ensure background is set properly
  vim.opt.background = "light"
end

-- Apply the theme
set_highlights()

-- Set up autocommand to reapply theme when colorscheme changes
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    set_highlights()
  end,
})

-- Set the theme name for compatibility
vim.g.colors_name = "bearded_light_custom"

return {
  name = "bearded_light_custom",
  colors = colors,
  highlights = set_highlights
}
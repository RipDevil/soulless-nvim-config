-- AI Assistant configuration for ai-nvim
-- This configuration provides Cline-like AI functionality in Neovim
-- with support for company-specific API configurations

-- local M = {}

-- function M.setup()
--   -- Load the ai-nvim plugin
--   require('ai').setup({
--     -- Default configuration that can be overridden by company settings
--     provider = "openai",  -- Default provider, can be changed
--     api_key = nil,        -- Will be configured via environment or config file
--     base_url = nil,       -- Company-specific base URL
--     model = "gpt-4",      -- Default model, can be customized
    
--     -- AI assistant settings
--     auto_complete = true,
--     chat_enabled = true,
    
--     -- Keybindings (can be customized)
--     keymaps = {
--       -- AI chat interface
--       chat = "<leader>ac",
      
--       -- Code completion and suggestions
--       complete = "<leader>ai",
      
--       -- Explain selected code
--       explain = "<leader>ae",
      
--       -- Generate documentation
--       docs = "<leader>ad",
      
--       -- Refactor code
--       refactor = "<leader>ar",
--     },
    
--     -- Additional options for company configuration
--     config = {
--       -- Company-specific settings can be loaded from external config
--       -- This allows for easy switching between different AI providers
--       company_config_path = "~/.config/nvim/ai_company_config.lua",
--     }
--   })
-- end

-- -- Function to load company-specific AI configuration
-- function M.load_company_config()
--   local config_path = vim.fn.expand("~/.config/nvim/ai_company_config.lua")
--   if vim.loop.fs_access(config_path, "R") then
--     -- Load company configuration if it exists
--     local ok, err = pcall(dofile, config_path)
--     if not ok then
--       print("Error loading company AI config: " .. tostring(err))
--     end
--   else
--     -- Create a sample config file if none exists
--     local sample_config = [[
-- -- Company AI Configuration
-- -- This file contains your company's specific AI settings
-- -- You can modify these values to match your company's AI service

-- local config = {
--   provider = "custom",        -- or "openai", "anthropic", etc.
--   api_key = os.getenv("COMPANY_AI_API_KEY") or "your-api-key-here",
--   base_url = os.getenv("COMPANY_AI_BASE_URL") or "https://your-company-api.com/v1",
--   model = "company-model-name",
--   temperature = 0.7,
--   max_tokens = 2048,
-- }

-- -- Apply the configuration
-- require('ai').set_config(config)
-- ]]
    
--     -- Create the sample config file
--     local file = io.open(config_path, "w")
--     if file then
--       file:write(sample_config)
--       file:close()
--       print("Created sample company AI config at: " .. config_path)
--     end
--   end
-- end

-- return M

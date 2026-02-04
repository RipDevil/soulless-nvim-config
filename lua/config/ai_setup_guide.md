# AI Assistant Setup Guide

This guide explains how to configure the AI assistant plugin for your company's specific API settings.

## Installation

The AI plugin is currently disabled in your Neovim configuration. To enable it, uncomment the plugin in `plugins.lua` and the configuration in `init.lua`.

## Configuration

The AI plugin supports flexible configuration for company-specific API endpoints. There are two ways to configure it:

### Method 1: Environment Variables (Recommended)

Set these environment variables in your shell profile (.zshrc, .bashrc, etc.):

```bash
export COMPANY_AI_API_KEY="your-company-api-key-here"
export COMPANY_AI_BASE_URL="https://your-company-ai-service.com/v1"
```

### Method 2: Configuration File

The plugin will automatically create a sample configuration file at:
`~/.config/nvim/ai_company_config.lua`

Edit this file to match your company's AI service settings:

```lua
-- Company AI Configuration
local config = {
  provider = "custom",        -- or "openai", "anthropic", etc.
  api_key = os.getenv("COMPANY_AI_API_KEY") or "your-api-key-here",
  base_url = os.getenv("COMPANY_AI_BASE_URL") or "https://your-company-api.com/v1",
  model = "company-model-name",
  temperature = 0.7,
  max_tokens = 2048,
}

-- Apply the configuration
require('ai').set_config(config)
```

## Available Commands

Once configured and enabled, you can use these keybindings:

- `<leader>ac` - Open AI Chat interface
- `<leader>ai` - Get AI code suggestions
- `<leader>ae` - Explain selected code
- `<leader>ad` - Generate documentation
- `<leader>ar` - Refactor code

## Features

This implementation provides Cline-like functionality with:
- AI-powered code completion and suggestions
- Natural language to code translation
- Code explanation and documentation generation
- Code refactoring assistance
- Support for company-specific API endpoints
- Configurable API keys and base URLs

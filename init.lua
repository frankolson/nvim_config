--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = ","
vim.g.localleader = "\\"


-- PLUGINS
require('plug')


-- CONFIGURATION
require('vars')      -- Variables
require('opts')      -- Options


-- KEYMAPS
require('keys')      -- Keymaps


-- PLUGIN SETUP
require('nvim-tree').setup{
  git = {
    ignore = false
  }
}
require('lualine').setup {
    options = {
        theme = 'dracula-nvim'
    }
}
require('nvim-autopairs').setup{}


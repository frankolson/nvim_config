--[[ keys.lua ]]
local map = require('utils').map

-- remap the key used to leave insert mode
map('i', 'jk', '<Esc>', {})                                 -- Escape insert mode
map('t', 'jk', '<C-\\><C-n>', {})                           -- Escape terminal mode

-- Toggles
map('n', '<leader>n', [[:NvimTreeToggle]], {})
map('n', '<leader>l', [[:IndentLinesToggle]], {})
map('n', '<leader>t', [[:TagbarToggle]], {})

-- Misc
map('i', '<leader><cr>', '<Esc>yyp<C-a>elC<Space>', {})     -- Auto increment markdown ordered list

-- Fuzzy Find
map('n', '<leader>ff', [[:Telescope find_files]], {})
map('n', '<leader>hf', [[:lua require('telescope.builtin').find_files({cwd='~/'})<cr>]], {})
map('n', '<leader>vf', [[:lua require('telescope.builtin').find_files({cwd='~/.config/nvim'})<cr>]], {})
map('n', '<leader>nf', [[:lua require('telescope.builtin').find_files({cwd='~/Documents/notes'})<cr>]], {})

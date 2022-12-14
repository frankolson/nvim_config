--[[ keys.lua ]]
local map = require('utils').map

-- remap the key used to leave insert mode
map('i', 'jk', '<Esc>', {})                                 -- Escape insert mode
map('t', 'jk', '<C-\\><C-n>', {})                           -- Escape terminal mode

-- Toggles
map('n', '<leader>n', [[:NvimTreeToggle<cr>]], {})
map('n', '<leader>G', [[:Goyo <bar> lua require('lualine').hide()<cr>]], {})
map('n', '<leader>G!', [[:Goyo <bar> lua require('lualine').hide({unhide=true})<cr>]], {})

-- Fuzzy Find
map('n', '<leader>ff', [[:Telescope find_files]], {})
map('n', '<leader>fh', [[:lua require('telescope.builtin').find_files({cwd='~/'})<cr>]], {})
map('n', '<leader>fv', [[:lua require('telescope.builtin').find_files({cwd='~/.config/nvim'})<cr>]], {})
map('n', '<leader>fn', [[:lua require('telescope.builtin').find_files({cwd='~/Documents/notes'})<cr>]], {})

-- Markdown
map('i', '<leader><cr>', '<Esc>yyp<C-a>elC<Space>', {})     -- Auto increment markdown ordered list
vim.keymap.set('n', '<leader>ct', function()                -- Toggle markdown checkboxes
  local line = vim.api.nvim_get_current_line()
  local checkedRegex = vim.regex("- \\[x\\]")
  local uncheckedRegex = vim.regex("- \\[ \\]")
 
  if(checkedRegex:match_str(line))
  then
    local new_current_line = line:gsub("%[x%]", "[ ]")
    vim.api.nvim_set_current_line(new_current_line)
  end

  if(uncheckedRegex:match_str(line))
  then
    local new_current_line = line:gsub("%[ %]", "[x]")
    vim.api.nvim_set_current_line(new_current_line)
  end
end, {})

-- Misc
vim.keymap.set('n', '<leader>sn', function()                -- Create scratch note
    local scratchNoteDirectory = "~/Documents/notes/scratch"
    local date = os.date("%Y-%m-%d")
    local filename = string.format(
        "%s/%s.md",
        scratchNoteDirectory,
        date
    )
    
    vim.cmd(string.format(":e %s", filename))
end, {})
map('n', '<leader>lh', string.format('Go## %s<esc>o<cr><esc>', os.date("%d %B %Y")), {})     -- create header for personal log date entry
map('n', '<leader>le', string.format('Go**%s - location**<esc>2bviw', os.date("%-I:%M %p")), {})     -- create title for personal log single entry


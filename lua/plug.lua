-- [[ plug.lua ]]

return require('packer').startup({function(use)
    use { 'wbthomason/packer.nvim' }
    use { 'tpope/vim-fugitive' }                    -- git integration
    use { 'windwp/nvim-autopairs' }                 -- auto close brackets, etc.
    use { 'godlygeek/tabular' }                     -- text alignment
    use {                                           -- fuzzy finder
        'nvim-telescope/telescope.nvim', 
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }
    use {                                           -- filesystem navigation
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons'          -- filesystem icons
        }
    }

    -- [[ Theme ]]
    use { 'Mofiqul/dracula.nvim' }
    use {                                           -- statusline
        'nvim-lualine/lualine.nvim', 
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        }
    }
end})

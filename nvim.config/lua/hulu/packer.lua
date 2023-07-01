-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        }
    }

    use 'mattn/emmet-vim'

    use 'xiyaowong/transparent.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use({ 'catppuccin/nvim', as = 'catppuccin' })
    use({ 'folke/tokyonight.nvim', as = 'tokyonight' })

    -- vim.cmd('colorscheme catppuccin')

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    -- use('nvim-treesitter/playground')
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('tpope/vim-commentary')
    use('tpope/vim-surround')
    use('tpope/vim-repeat')
    use('tpope/vim-abolish')
    use('tpope/vim-unimpaired')

    use({
        "ziontee113/color-picker.nvim",
        config = function()
            require("color-picker")
        end,
    })

    use 'NvChad/nvim-colorizer.lua'

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            {
                -- Snippets
                'L3MON4D3/LuaSnip',
                'rafamadriz/friendly-snippets',
            }

        }
    }
end)
    -- Packer can manage itself

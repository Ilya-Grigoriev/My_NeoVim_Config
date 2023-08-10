-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim', 'sharkdp/fd' } }
    }
    use { "smartpde/telescope-recent-files" }

    -- JS/JSX/TS
    use {
        'jose-elias-alvarez/null-ls.nvim',
    }

    -- LSP
    use {
        'neovim/nvim-lspconfig',
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'ray-x/lsp_signature.nvim',
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    }

    -- NeoVim Tree
    use { "nvim-tree/nvim-tree.lua" }

    -- Themes
    use { 'morhetz/gruvbox' }

    -- Commenter
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- Python Docstring
    use { 'pixelneo/vim-python-docstring' }

    -- RipGrep
    use "BurntSushi/ripgrep"

    -- WebDevIcons
    use 'nvim-tree/nvim-web-devicons'

    -- Terminal
    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end }

    -- Git
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }
    use { 'kdheepak/lazygit.nvim' }

    -- Multi Cursor
    use { 'mg979/vim-visual-multi' }

    -- Snippets
    use {
        'rafamadriz/friendly-snippets',
        'saadparwaiz1/cmp_luasnip',
        'L3MON4D3/LuaSnip',
        'sirver/ultisnips'
    }

    -- Harpoon
    use { 'ThePrimeagen/harpoon' }

    -- Treesitter
    use { 'nvim-treesitter/nvim-treesitter' }

    -- Fzf
    use {
        'junegunn/fzf.vim',
        requires = { 'junegunn/fzf', run = ':call fzf#install()' }
    }

    -- Lightbulb
    use { 'kosayoda/nvim-lightbulb' }

    -- LSP for java
    use 'mfussenegger/nvim-jdtls'

    -- Dashboard
    use {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard_setup/_dashboard_nvim')
        end,
    }
end)

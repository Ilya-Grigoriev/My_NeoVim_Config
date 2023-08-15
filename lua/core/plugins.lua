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

    -- LSP
    use {
        'hrsh7th/nvim-cmp',
        'neovim/nvim-lspconfig',
        'jose-elias-alvarez/null-ls.nvim',
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

    -- Snippets
    use { "L3MON4D3/LuaSnip", run = "make install_jsregexp" }
    use {
        'rafamadriz/friendly-snippets',
        'saadparwaiz1/cmp_luasnip',
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

    -- LSP for java
    use 'mfussenegger/nvim-jdtls'
end)

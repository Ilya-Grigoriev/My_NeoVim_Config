return {
    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        'nvim-lua/plenary.nvim',
        'sharkdp/fd'
    },

    -- LSP
    {
        'hrsh7th/nvim-cmp',
        'neovim/nvim-lspconfig',
        'jose-elias-alvarez/null-ls.nvim',
        'hrsh7th/cmp-nvim-lsp',
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    { "folke/neodev.nvim",      opts = {} },

    {
        "ray-x/lsp_signature.nvim",
        event = "VeryLazy",
        opts = {},
    },

    -- NeoVim Tree
    { "nvim-tree/nvim-tree.lua" },

    -- Themes
    { 'morhetz/gruvbox' },

    -- Commenter
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    },

    -- RipGrep
    "BurntSushi/ripgrep",

    -- WebDevIcons
    'nvim-tree/nvim-web-devicons',

    -- Git
    {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    },

    -- Snippets
    { "L3MON4D3/LuaSnip",             run = "make install_jsregexp" },
    {
        'rafamadriz/friendly-snippets',
        'saadparwaiz1/cmp_luasnip',
    },

    -- Treesitter
    { 'nvim-treesitter/nvim-treesitter' },

    -- Fzf
    {
        'junegunn/fzf.vim',
        requires = { 'junegunn/fzf', run = ':call fzf#install()' }
    },

    -- LSP for java
    'mfussenegger/nvim-jdtls',

    -- Annotation
    {
        "danymat/neogen",
        dependencies = "nvim-treesitter/nvim-treesitter",
        config = true,
        -- Uncomment next line if you want to follow only stable versions
        -- version = "*"
    }
}

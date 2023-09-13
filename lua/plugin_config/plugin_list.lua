return {
    -- Packer can manage itself
    'wbthomason/packer.nvim',

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
        'ray-x/lsp_signature.nvim',
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
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

    -- Python Docstring
    { 'pixelneo/vim-python-docstring' },

    -- RipGrep
    "BurntSushi/ripgrep",

    -- WebDevIcons
    'nvim-tree/nvim-web-devicons',

    -- Terminal
    {
        "akinsho/toggleterm.nvim",
        config = function()
            require("toggleterm").setup()
        end
    },

    -- Git
    {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    },
    { 'kdheepak/lazygit.nvim' },

    -- Snippets
    { "L3MON4D3/LuaSnip",             run = "make install_jsregexp" },
    {
        'rafamadriz/friendly-snippets',
        'saadparwaiz1/cmp_luasnip',
    },

    -- Harpoon
    { 'ThePrimeagen/harpoon' },

    -- Treesitter
    { 'nvim-treesitter/nvim-treesitter' },

    -- Fzf
    {
        'junegunn/fzf.vim',
        requires = { 'junegunn/fzf', run = ':call fzf#install()' }
    },

    -- LSP for java
    'mfussenegger/nvim-jdtls'
}

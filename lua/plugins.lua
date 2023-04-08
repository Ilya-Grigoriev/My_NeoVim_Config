-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  --Telescope
  use {
          'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
          requires = { {'nvim-lua/plenary.nvim'} }
    }

  -- JS/JSX/TS
  use {
    'jose-elias-alvarez/null-ls.nvim',
    'nvim-lua/plenary.nvim'
}

  -- LSP
  use {
    'neovim/nvim-lspconfig',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'saadparwaiz1/cmp_luasnip',
    'ray-x/lsp_signature.nvim',
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    'L3MON4D3/LuaSnip'
}
  
  -- NeoVim Tree
  use {"nvim-tree/nvim-tree.lua"}

  -- TagBar
  use {'preservim/tagbar'}

    -- Themes
    use {'morhetz/gruvbox'}
    -- Commenter
    use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

    -- AutoPairs
    use {
        "windwp/nvim-autopairs",
        config = function() 
            require("nvim-autopairs").setup()
        end
    }

    -- Snippets
    use {'sirver/ultisnips'}

    -- Engine
    use {'dense-analysis/ale'}

    -- Python Docstring
    use {'pixelneo/vim-python-docstring'}

    -- -- Surround text
    -- use({
    --     "kylechui/nvim-surround",
    --     tag = "*",
    --     config = function()
    --         require("nvim-surround").setup({
    --         })
    --     end
    -- })

    -- RipGrep
    use "duane9/nvim-rg"

    -- WebDevIcons
    use 'nvim-tree/nvim-web-devicons'

    -- Terminal
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup()
    end}

    -- Git
    use {
      'lewis6991/gitsigns.nvim',
      config = function()
        require('gitsigns').setup()
      end
    }

    -- Multi Cursor
    use {'mg979/vim-visual-multi'}

    -- Snippets
    use {'hrsh7th/cmp-nvim-lsp',
    'rafamadriz/friendly-snippets'}
end)

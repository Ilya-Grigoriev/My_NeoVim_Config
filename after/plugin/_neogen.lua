local neogen = require('neogen')

neogen.setup {
    enabled = true,
    languages = {
        python = {
            template = {
                annotation_convention = "numpydoc", -- for a full list of annotation_conventions, see supported-languages below,
                ...                                 -- for more template configurations, see the language's configuration file in configurations/{lang}.lua
            },
        },
    }
}

vim.keymap.set('n', ',d', ":lua require('neogen').generate()<CR>", {})

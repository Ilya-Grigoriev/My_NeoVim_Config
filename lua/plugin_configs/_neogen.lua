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

local cmp = require('cmp')

cmp.setup {
    -- You must set mapping if you want.
    mapping = {
        ["<Tab>"] = cmp.mapping(function(fallback)
            if neogen.jumpable() then
                neogen.jump_next()
            else
                fallback()
            end
        end, {
            "i",
            "s",
        }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if neogen.jumpable(true) then
                neogen.jump_prev()
            else
                fallback()
            end
        end, {
            "i",
            "s",
        }),
    },
}

vim.keymap.set('n', ',d', ":lua require('neogen').generate()<CR>", {})

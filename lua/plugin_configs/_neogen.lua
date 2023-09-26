vim.keymap.set('n', ',d', ":lua require('neogen').generate()<CR>", {})

local neogen = require('neogen')

neogen.setup {
    languages = {
        ['python.numpydoc'] = require('neogen.configurations.python')
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

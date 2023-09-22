vim.keymap.set('n', ',wh', ':WhichKey<CR>', {})

local wk = require("which-key")
wk.setup(
    {
        popup_mappings = {
            scroll_down = "j", -- binding to scroll down inside the popup
            scroll_up = "k",   -- binding to scroll up inside the popup
        },
        triggers_nowait = {
        },
        hidden = {},
    }
)

wk.register({
    ["t"] = {
        name = "Telescope",
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
        r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
        g = { "<cmd>Telescope live_grep<cr>", "Find with Grep" },
        b = { "<cmd>Telescope buffers<cr>", "Open Buffers List" },
        h = { "<cmd>Telescope help_tags<cr>", "Open Help Tags List" },
    },
})

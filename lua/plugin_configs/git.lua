vim.api.nvim_set_keymap("n", ",g", ":!git ", {})
vim.api.nvim_set_keymap('n', ',ga', ':!git add ', {})
vim.api.nvim_set_keymap('n', ',gcm', ':!git commit ', {})
vim.api.nvim_set_keymap('n', ',gs', ':!git status<CR>', {})
vim.api.nvim_set_keymap('n', ',gco', ':!git checkout ', {})
vim.api.nvim_set_keymap('n', ',gl', ':!git log<CR>', {})
vim.api.nvim_set_keymap('n', ',gp', ':!git push<CR>', {})
vim.api.nvim_set_keymap('n', ',gb', ':!git branch<CR>', {})
vim.api.nvim_set_keymap('n', ',gm', ':!git merge ', {})

-- LazyGit
local Terminal = require('toggleterm.terminal').Terminal
local lazygit  = Terminal:new({
    cmd = "lazygit",
    dir = "git_dir",
    direction = "float",
    float_opts = {
        border = "double",
    },
    -- function to run on opening the terminal
    on_open = function(term)
        vim.cmd("startinsert!")
        vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
    end,
    -- function to run on closing the terminal
    on_close = function(term)
        vim.cmd("startinsert!")
    end,
})

function _lazygit_toggle()
    lazygit:toggle()
end

vim.api.nvim_set_keymap("n", ",gg", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })

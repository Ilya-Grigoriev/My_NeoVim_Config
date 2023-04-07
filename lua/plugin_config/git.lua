vim.api.nvim_set_keymap("n", ",g", ":!git ", {})
vim.api.nvim_set_keymap('n', ',ga', ':!git add ', {})
vim.api.nvim_set_keymap('n', ',gc', ':!git commit ', {})
vim.api.nvim_set_keymap('n', ',gs', ':!git status<CR>', {})
vim.api.nvim_set_keymap('n', ',gco', ':!git checkout ', {})
vim.api.nvim_set_keymap('n', ',gl', ':!git log<CR>', {})
vim.api.nvim_set_keymap('n', ',gp', ':!git push<CR>', {})

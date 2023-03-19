vim.api.nvim_set_keymap("n", ",g", ":!git ", {})
vim.api.nvim_set_keymap('n', ',gc', ':!git commit -a ', {})
vim.api.nvim_set_keymap('n', ',gs', ':!git status<CR>', {})
vim.api.nvim_set_keymap('n', ',gco', ':!git chekcout ', {}) 
vim.api.nvim_set_keymap('n', ',gl', ':!git log<CR>', {})


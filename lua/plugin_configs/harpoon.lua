vim.api.nvim_set_keymap('n', ',hm', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', {})
vim.api.nvim_set_keymap('n', ',ha', ':lua require("harpoon.mark").add_file()<CR>', {})

local g = vim.g

g.python_style = 'numpy'
vim.api.nvim_set_keymap('n', 'D', ':Docstring<CR>', {})

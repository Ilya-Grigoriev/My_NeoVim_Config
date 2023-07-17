vim.cmd [[let g:vpd_indent = '    ']]
vim.cmd [[let g:python_style = 'numpy']]
vim.api.nvim_set_keymap('n', ',d', ':Docstring<CR>', { noremap = true })

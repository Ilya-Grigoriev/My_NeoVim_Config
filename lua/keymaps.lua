vim.g.mapleader = ","
vim.cmd [[set colorcolumn=79]]
vim.api.nvim_set_keymap('n', 'x', '"xx', {noremap = true})
vim.api.nvim_set_keymap('n', 'dd', '"ddd', {noremap = true})
vim.api.nvim_set_keymap('n', ',<Space>', ':nohlsearch<CR>', {})
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', {})
vim.api.nvim_set_keymap('n', '<C-/>', ':NERDCommenterToggle<CR>', {})
vim.api.nvim_set_keymap('n', '<C-[>', '<C-w><Left>', {})
vim.api.nvim_set_keymap('n', '<C-]>', '<C-w><Right>', {})
vim.api.nvim_set_keymap("n", "<leader>rn", 
"<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<S-k>', '<cmd> lua vim.lsp.buf.hover()<CR>',
{ noremap = true })
vim.api.nvim_set_keymap('n', '<leader>rf', ':call delete(expand(""))', {})
vim.api.nvim_set_keymap('n', '<leader>ps', ':py3file %<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>tn', ':tabnew<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>rg', ':Rg ', {})
vim.api.nvim_set_keymap('n', '<leader>s', ':%s/', {})

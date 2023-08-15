vim.g.mapleader = ","
vim.cmd [[set colorcolumn=79]]
-- vim.api.nvim_set_keymap('n', 'x', '"xx', {noremap = true})
-- vim.api.nvim_set_keymap('n', 'dd', '"ddd', {noremap = true})
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
vim.api.nvim_set_keymap('x', '<leader>s', ':s/', {})
vim.api.nvim_set_keymap('n', '<C-b>', '<C-^><CR>', {})
vim.api.nvim_set_keymap('n', ',bs', ':buffers<CR>', {})
vim.api.nvim_set_keymap('n', ',bd', ':%bd<CR>', {})
vim.keymap.set('n', ',bf', ':bd ', {})
vim.api.nvim_set_keymap("t", '<C-t>', '<C-\\><C-n>', { noremap = true })
vim.keymap.set('n', 'tn', ':tabnew<CR>', { noremap = true })
vim.keymap.set('n', ',ch', ":call histdel(':')<CR>", {})
vim.keymap.set('n', '<C-Up>', ':m -2<CR>', { noremap = true })
vim.keymap.set('n', '<C-Down>', ':m +1<CR>', { noremap = true })
vim.keymap.set('v', '<C-y>', '"+y', { noremap = true })

-- Tabs
vim.keymap.set('n', 'L', 'gt', { noremap = true })
vim.keymap.set('n', 'H', 'gT', { noremap = true })
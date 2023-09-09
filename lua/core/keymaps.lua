vim.g.mapleader = ","

-- Exiting to Normal mode
vim.keymap.set('i', 'jk', '<ESC>', {})
vim.keymap.set("t", '<C-t>', '<C-\\><C-n>', { noremap = true })

vim.keymap.set('n', ',<Space>', ':nohlsearch<CR>', {})

-- NerdTree
vim.keymap.set('n', '<C-/>', ':NERDCommenterToggle<CR>', {})
vim.keymap.set('n', '<C-[>', '<C-w><Left>', {})
vim.keymap.set('n', '<C-]>', '<C-w><Right>', {})

-- LSP
vim.keymap.set("n", "<leader>rn",
    "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true })
vim.keymap.set('n', '<S-k>', '<cmd> lua vim.lsp.buf.hover()<CR>',
    { noremap = true })

vim.keymap.set('n', '<leader>rf', ':call delete(expand(""))', {})

-- Run python file
vim.keymap.set('n', '<leader>ps', ':py3file %<CR>', {})

-- Tabs
vim.keymap.set('n', '<leader>tn', ':tabnew<CR>', {})
vim.keymap.set('n', 'tn', ':tabnew<CR>', { noremap = true })

-- Ripgrep
vim.keymap.set('n', '<leader>rg', ':Rg ', {})

-- Substitution
vim.keymap.set('n', '<leader>s', ':%s/', {})
vim.keymap.set('x', '<leader>s', ':s/', {})

-- Buffers
vim.keymap.set('n', ',bs', ':buffers<CR>', {})
vim.keymap.set('n', ',bd', ':%bd<CR>', {})
vim.keymap.set('n', ',bf', ':bd ', {})


vim.keymap.set('v', '<C-y>', '"+y', { noremap = true })

-- Move line
vim.keymap.set('n', '<C-Up>', ':m -2<CR>', { noremap = true })
vim.keymap.set('n', '<C-Down>', ':m +1<CR>', { noremap = true })

-- Moving tabs
vim.keymap.set('n', 'L', 'gt', { noremap = true })
vim.keymap.set('n', 'H', 'gT', { noremap = true })

-- Other
vim.keymap.set('n', '<C-a>', 'ggVG', { noremap = true })

vim.g.mapleader = ","

vim.keymap.set('i', 'jk', '<ESC>', { desc = "Exiting from Insert mode to Normal mode" })

vim.keymap.set('n', '<leader><Space>', ':nohlsearch<CR>', { desc = "Disable highlightings for searching matches" })

vim.keymap.set('n', '<C-/>', ':NERDCommenterToggle<CR>', { desc = "Open Terminal" })

vim.keymap.set("n", "<leader>rn",
    "<cmd>lua vim.lsp.buf.rename()<CR>",
    { noremap = true, desc = "Rename variable" }
)

vim.keymap.set('n', '<leader>rf', ':call delete(expand(""))<Left><Left><Left>', { desc = "Delete file" })

vim.keymap.set('n', '<leader>tn', ':tabnew<CR>', { desc = "Create tab" })

vim.keymap.set('n', '<leader>rg', ':Rg ', { desc = "Run Ripgrep" })

vim.keymap.set('n', '<leader>s', ':%s/', { desc = "Substitution" })
vim.keymap.set('x', '<leader>s', ':s/', { desc = "Substitution in Visual mode" })

vim.keymap.set('n', '<leader>ba', ':%bd<CR>', { desc = "Delete all buffers in nvim" })
vim.keymap.set('n', '<leader>bf', ':bd ', { desc = "Delete buffer by id" })


vim.keymap.set('v', '<C-y>', '"+y', { noremap = true, desc = "Copy text to clipboard" })

vim.keymap.set('n', '<C-Up>', ':m -2<CR>', { noremap = true, desc = "Move up one line" })
vim.keymap.set('n', '<C-Down>', ':m +1<CR>', { noremap = true, desc = "Move down one line" })

vim.keymap.set('n', 'L', 'gt', { noremap = true, desc = "Move right between tabs" })
vim.keymap.set('n', 'H', 'gT', { noremap = true, desc = "Move left between tabs" })

vim.keymap.set('n', '<C-a>', 'ggVG', { noremap = true, desc = 'Select all lines' })

vim.keymap.set('n', '<C-b>', '<C-^><CR>', { noremap = true, desc = 'Go to previous buffer' })

vim.keymap.set('n', ',vs', ':vsplit<CR>', { desc = "Split vertical" })

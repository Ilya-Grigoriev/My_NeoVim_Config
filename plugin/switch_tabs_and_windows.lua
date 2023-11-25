for n_tab = 1, 10, 1 do
    vim.keymap.set(
        'n',
        string.format('<M-%d>', n_tab),
        string.format('%dgt', n_tab),
        { desc = 'Switch tabs by using Alt+{number}' }
    )
    vim.keymap.set('t',
        string.format('<M-%d>', n_tab),
        string.format('<C-\\><C-n>%dgt', n_tab),
        { desc = 'Switch tabs by using Alt+{number} in terminal' }
    )
end

vim.keymap.set('n', '<M-h>', ':tabprevious<CR>', { desc = "Switch to previous tab" })
vim.keymap.set('n', '<M-l>', ':tabnext<CR>', { desc = "Switch to next tab" })

vim.keymap.set('t', '<M-h>', '<C-\\><C-n>|:tabprevious<CR>', { desc = "Switch to previous tab" })
vim.keymap.set('t', '<M-l>', '<C-\\><C-n>|:tabnext<CR>', { desc = "Switch to next tab" })

vim.keymap.set('n', '<C-M-j>', '<C-w>j', { desc = 'Switch to down window' })
vim.keymap.set('n', '<C-M-k>', '<C-w>k', { desc = 'Switch to up window' })
vim.keymap.set('n', '<C-M-l>', '<C-w>l', { desc = 'Switch to right window' })
vim.keymap.set('n', '<C-M-h>', '<C-w>h', { desc = 'Switch to left window' })

vim.keymap.set('t', '<C-J>', '<C-\\><C-n><C-w>j', { desc = 'Switch to down window from terminal' })
vim.keymap.set('t', '<C-K>', '<C-\\><C-n><C-w>k', { desc = 'Switch to up window from terminal' })
vim.keymap.set('t', '<C-L>', '<C-\\><C-n><C-w>l', { desc = 'Switch to right window from terminal' })
vim.keymap.set('t', '<C-H>', '<C-\\><C-n><C-w>h', { desc = 'Switch to left window from terminal' })

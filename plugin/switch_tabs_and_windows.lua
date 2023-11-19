for n_tab = 1, 10, 1 do
    vim.keymap.set(
        'n',
        string.format('<M-%d>', n_tab),
        string.format('%dgt', n_tab),
        { desc = 'Switch tabs by using Alt+{number}' }
    )
    vim.keymap.set(
        't',
        string.format('<M-%d>', n_tab),
        string.format('<C-\\><C-n>%dgt', n_tab),
        { desc = 'Switch tabs by using Alt+{number} in terminal' }
    )
end

vim.keymap.set('n', '<M-h>', ':tabprevious<CR>', { desc = "Switch to previous tab" })
vim.keymap.set('n', '<M-l>', ':tabnext<CR>', { desc = "Switch to next tab" })

vim.keymap.set('t', '<M-h>', '<C-\\><C-n>|:tabprevious<CR>', { desc = "Switch to previous tab" })
vim.keymap.set('t', '<M-l>', '<C-\\><C-n>|:tabnext<CR>', { desc = "Switch to next tab" })

vim.keymap.set('n', '<C-J>', '<C-w>j', { desc = 'Switch to down window' })
vim.keymap.set('n', '<C-K>', '<C-w>k', { desc = 'Switch to up window' })
vim.keymap.set('n', '<C-L>', '<C-w>l', { desc = 'Switch to right window' })
vim.keymap.set('n', '<C-H>', '<C-w>h', { desc = 'Switch to left window' })

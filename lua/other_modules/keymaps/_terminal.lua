vim.keymap.set('n', '<C-\\>', function()
    vim.cmd.tabnew()
    vim.cmd.terminal()
    vim.cmd.startinsert()
end, { desc = 'Open terminal in new tab' })

vim.keymap.set('n', ',gg', function()
    vim.cmd.tabnew()
    vim.cmd.terminal()
    vim.cmd.startinsert()
end, { desc = 'Open lazygit in terminal' })

vim.keymap.set("t", '<C-t>', '<C-\\><C-n>',
    {
        noremap = true,
        desc = "Exiting from Terminal mode to Normal mode"
    }
)
vim.keymap.set('t', '<C-q>', '<C-\\><C-n>:q<CR>', { desc = 'Close terminal' })

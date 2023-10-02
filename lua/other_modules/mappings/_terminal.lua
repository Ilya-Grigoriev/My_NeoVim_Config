vim.keymap.set('n', '<C-\\>', function()
    vim.cmd.tabnew()
    vim.cmd.terminal()
end, { desc = 'Open terminal in new tab' })

vim.api.nvim_create_autocmd(
    { 'BufEnter', 'TermOpen' },
    {
        pattern = 'term://*',
        callback = function(_)
            vim.cmd.startinsert()
        end
    }
)

vim.keymap.set("t", '<C-t>', '<C-\\><C-n>',
    {
        noremap = true,
        desc = "Exiting from Terminal mode to Normal mode"
    }
)
vim.keymap.set('t', '<C-q>', '<C-\\><C-n>:bd!<CR>', { desc = 'Close terminal' })

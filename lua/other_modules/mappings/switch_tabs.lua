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

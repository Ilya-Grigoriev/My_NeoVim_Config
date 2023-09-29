for n_tab = 1, 10, 1 do
    vim.keymap.set(
        'n',
        string.format('<M-%d>', n_tab),
        string.format('%dgt', n_tab),
        {}
    )
end

local commands_filetypes = {
    ['python'] = ':term python3 %<CR>i',
    ['lua'] = ':term lua %<CR>i',
}

for filetype, command_for_run in pairs(commands_filetypes) do
    vim.api.nvim_create_autocmd('FileType',
        {
            pattern = filetype,
            callback = function(args)
                vim.keymap.set('n', ',<CR>', command_for_run, { buffer = args.buf })
            end
        }
    )
end

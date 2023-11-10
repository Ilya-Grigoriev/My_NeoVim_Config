local commands_filetypes = {
    python = ':term python3 %<CR>',
    lua = ':term lua %<CR>',
    tex = ':term pdflatex %<CR>',
}


for filetype, command_for_run in pairs(commands_filetypes) do
    vim.api.nvim_create_autocmd('FileType',
        {
            pattern = filetype,
            callback = function(args)
                vim.keymap.set('n', '<CR>', command_for_run,
                    {
                        buffer = args.buf,
                    }
                )
            end
        }
    )
end

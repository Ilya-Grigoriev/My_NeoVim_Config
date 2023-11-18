local commands_filetypes = {
    python = 'python %s',
    lua = 'lua %s',
    tex = 'pdflatex %s',
}


for filetype, command_for_run in pairs(commands_filetypes) do
    vim.api.nvim_create_autocmd('FileType',
        {
            pattern = filetype,
            callback = function(args)
                filepath = args['file']
                vim.keymap.set('n', '<CR>',
                    function()
                        vim.cmd.tabnew()
                        result_command = string.format(command_for_run, filepath)
                        vim.cmd.terminal(result_command)
                    end, {}
                )
            end
        }
    )
end

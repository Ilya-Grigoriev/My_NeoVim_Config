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
                vim.keymap.set('n', '<CR>',
                    function()
                        filepath = vim.fn.expand('%')
                        vim.cmd.tabnew()
                        result_command = string.format(command_for_run, filepath)
                        vim.cmd.terminal(result_command)
                    end, {}
                )
            end
        }
    )
end

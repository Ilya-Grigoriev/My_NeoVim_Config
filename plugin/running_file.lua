local running_file = vim.api.nvim_create_augroup('RunningFIle', { clear = true })

local commands_filetypes = {
    python = 'python %s',
    lua = 'lua %s',
    tex = 'pdflatex %s',
}


for filetype, command_for_run in pairs(commands_filetypes) do
    vim.api.nvim_create_autocmd('FileType',
        {
            pattern = filetype,
            group = running_file,
            callback = function(args)
                vim.keymap.set('n', ',<CR>',
                    function()
                        filepath = vim.fn.expand('%')
                        result_command = string.format(command_for_run, filepath)

                        vim.cmd.split()
                        vim.cmd.terminal(result_command)
                    end, { desc = string.format('Run %s file', filetype) }
                )
            end
        }
    )
end

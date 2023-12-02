local markdown = vim.api.nvim_create_augroup('MarkdownFileSettings', { clear = true })

vim.api.nvim_create_autocmd('FileType',
    {
        pattern = 'markdown',
        group = markdown,
        desc = 'Convert Markdown file to PDF and open Markdown in PDF',
        callback = function(args)
            vim.keymap.set('n', ',mc',
                function()
                    filename = vim.fn.expand('%')

                    filename_without_extension = vim.fn.expand('%:r')
                    pdf_filename = filename_without_extension .. ".pdf"

                    vim.cmd.terminal(
                        string.format(
                            'pandoc --quiet --from=gfm --to=pdf -o %s %s',
                            pdf_filename,
                            filename)
                    )
                end, { desc = 'Export markdown to pdf' }
            )
            vim.keymap.set('n', ',mo',
                function()
                    filename_without_extension = vim.fn.expand('%:r')
                    pdf_filename = filename_without_extension .. '.pdf'

                    vim.cmd.tabnew()
                    vim.cmd.terminal(string.format('okular %s', pdf_filename))
                    vim.cmd.tabprev()
                end,
                { desc = "Open Markdown in PDF (PDF file must be)" }
            )
        end
    }
)

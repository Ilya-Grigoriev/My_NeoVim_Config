local markdown = vim.api.nvim_create_augroup('MarkdownFileSettings', { clear = true })

local types_convert = {
    ['1'] = 'pdf',
    ['2'] = 'latex',
}


---@return number
local function _ask_converting_type()
    local type_convert
    local prompt = 'Convert to (enter number): \n 1: PDF\n 2: LaTeX\nYour choice: '

    vim.ui.input(
        {
            prompt = prompt
        },
        function(input)
            type_convert = input
        end
    )
    return type_convert
end

local function _convert_md()
    local number_convert = _ask_converting_type()

    if number_convert ~= '1' and number_convert ~= '2' then
        error('Incorrect choice')
    end

    type_convert = types_convert[number_convert]

    filename = vim.fn.expand('%')

    filename_without_extension = vim.fn.expand('%:r')

    pdf_filename = filename_without_extension .. '.' .. type_convert

    vim.cmd.terminal(
        string.format(
            'pandoc --quiet --from=gfm --to=%s -o %s %s',
            type_convert,
            pdf_filename,
            filename)
    )
end

local function _open_md()
    filename_without_extension = vim.fn.expand('%:r')
    pdf_filename = filename_without_extension .. '.pdf'

    vim.cmd.tabnew()
    vim.cmd.terminal(string.format('okular %s', pdf_filename))
    vim.cmd.tabprev()
    vim.cmd [[call feedkeys("\<Esc>")]]
end

vim.api.nvim_create_autocmd('FileType',
    {
        pattern = 'markdown',
        group = markdown,
        desc = 'Convert Markdown file to PDF and open Markdown in PDF',
        callback = function(args)
            vim.keymap.set('n', ',mc',
                _convert_md, { desc = 'Export markdown to PDF/LaTeX' }
            )
            vim.keymap.set('n', ',mo',
                _open_md,
                { desc = "Open Markdown in PDF (PDF file must be)" }
            )
        end
    }
)

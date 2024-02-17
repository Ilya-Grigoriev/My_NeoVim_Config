local types_convert = {
    ['1'] = 'pdf',
    ['2'] = 'latex',
    ['3'] = 'beamer',
    ['4'] = 'rmarkdown',
}


---@return number
local function _ask_converting_type()
    local type_convert
    local prompt =
    'Convert to (enter number): \n 1: PDF\n 2: LaTeX\n 3: Presentation (beamer)\n 4: RMarkdown\n Your choice: '

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

    if number_convert ~= '1' and number_convert ~= '2' and number_convert ~= '3' and number_convert ~= '4' then
        error('Incorrect choice')
    end

    type_convert = types_convert[number_convert]
    from_filename = vim.fn.expand('%')

    if number_convert == '3' then
        command_export = 'pandoc --pdf-engine=xelatex %s -t %s -o %s'
    elseif number_convert == '4' then
        vim.cmd.terminal [[
        echo "require(rmarkdown); render('%');" | R --vanilla
        ]]
        return
    else
        command_export = 'pandoc --pdf-engine=xelatex %s -t %s -o %s'
    end


    filename_without_extension = vim.fn.expand('%:r')

    if number_convert == '3' then
        to_filename = filename_without_extension .. '.pdf'
    else
        to_filename = filename_without_extension .. '.' .. type_convert
    end

    vim.cmd.terminal(
        string.format(
            command_export,
            from_filename,
            type_convert,
            to_filename)
    )
end

local function _open_md(tool_for_open)
    filename_without_extension = vim.fn.expand('%:r')
    pdf_filename = filename_without_extension .. '.pdf'

    vim.cmd.tabnew()
    vim.cmd.terminal(string.format('%s %s', tool_for_open, pdf_filename))
    vim.cmd.tabprev()
    vim.cmd [[call feedkeys("\<Esc>")]]
end

vim.keymap.set('n', ',mc',
    _convert_md, { buffer = 0, desc = 'Export markdown' }
)
vim.keymap.set('n', ',mo',
    function() _open_md('zathura') end,
    { buffer = 0, desc = "Open Markdown in PDF (PDF file must be)" }
)
vim.keymap.set('n', ',mp',
    function() _open_md('mupdf') end,
    { buffer = 0, desc = "Open Markdown like presentation (PDF file must be)" }
)

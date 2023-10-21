local M = {}

local function _enable_highlight()
    vim.cmd('highlight FileInfo guifg=#413543 guibg=#B5CB99')
end

function M.file_info()
    _enable_highlight()

    return table.concat({
        "%#FileInfo#",
        '%F',
        ' ',
        '%m',
        "%#FileInfo#",
    })
end

return M

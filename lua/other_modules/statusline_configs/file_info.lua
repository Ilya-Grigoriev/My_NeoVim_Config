local M = {}

local function _enable_highlight()
    vim.cmd('highlight FileInfo guibg=#393E46')
end

function M.file_info()
    _enable_highlight()

    return table.concat({
        "%#FileInfo#",
        ' ',
        '%F',
        ' ',
        '%m',
        "%#FileInfo#",
    })
end

return M

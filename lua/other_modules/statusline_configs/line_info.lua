local M = {}

local function _enable_highlight()
    vim.cmd('highlight LineInfo guibg=#182747')
end

function M.line_info()
    _enable_highlight()

    if vim.bo.filetype == "alpha" then
        return ""
    end
    return "%#LineInfo# %P %l:%c %#LineInfo#"
end

return M

-- @param severity string
-- @return integer
local function get_lsp_severity_count(severity)
    -- @type integer
    local severity_count = vim.tbl_count(
        vim.diagnostic.get(
            0,
            { severity = severity }
        )
    )
    return severity_count
end

-- @param severity_symbol string
-- @param severity_count integer
-- @return string
local function get_string_format_lsp_severity(severity_symbol, severity_count)
    -- @type string
    local string_severity = ""
    if severity_count ~= 0 then
        string_severity = string.format(' %s%s %s ',
            "%#LspDiagnosticsSignError#", severity_symbol, severity_count)
    end
    return string_severity
end

local function lsp()
    local errors_count = get_lsp_severity_count("Error")
    local warnings_count = get_lsp_severity_count("Warn")
    local hints_count = get_lsp_severity_count("Hint")

    local errors = get_string_format_lsp_severity('E', errors_count)
    local warnings = get_string_format_lsp_severity('W', warnings_count)
    local hints = get_string_format_lsp_severity('H', hints_count)
    return errors .. warnings .. hints .. "%#Normal#"
end

local function lineinfo()
    if vim.bo.filetype == "alpha" then
        return ""
    end
    return " %P %l:%c "
end

-- luacheck:ignore 111
Statusline = {}

-- luacheck:ignore 112
Statusline.active = function()
    return table.concat {
        "%#Statusline#",
        '%F',
        ' ',
        '%m',
        "%#Normal#",
        "%=%#StatusLineExtra#",
        lsp(),
        lineinfo(),
    }
end

-- luacheck:ignore 112
function Statusline.inactive()
    return " %F"
end

-- luacheck:ignore 112
function Statusline.short()
    return "%#StatusLineNC#   NvimTree"
end

vim.api.nvim_exec([[
  augroup Statusline
  au!
  au WinEnter,BufEnter * setlocal statusline=%!v:lua.Statusline.active()
  au WinLeave,BufLeave * setlocal statusline=%!v:lua.Statusline.inactive()
  au WinEnter,BufEnter,FileType NvimTree setlocal statusline=%!v:lua.Statusline.short()
  augroup END
]], false)

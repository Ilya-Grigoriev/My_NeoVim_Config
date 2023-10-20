local M = {}


function M.lsp()
    enable_highlightings()

    local errors_count = get_lsp_severity_count("Error")
    local warnings_count = get_lsp_severity_count("Warn")
    local hints_count = get_lsp_severity_count("Hint")

    local errors = get_string_format_lsp_severity('E', errors_count)
    local warnings = get_string_format_lsp_severity('W', warnings_count)
    local hints = get_string_format_lsp_severity('H', hints_count)
    return errors .. warnings .. hints .. "%#Normal#"
end

function enable_highlightings()
    vim.cmd('highlight LspDiagnosticsSignError guibg=#ff6262 guifg=Black gui=bold')
    vim.cmd('highlight LspDiagnosticsSignWarning guibg=#ffb73f guifg=Black gui=bold')
    vim.cmd('highlight LspDiagnosticsSignHints guibg=#a7a1ae guifg=Black gui=bold')
end

-- @param severity string
-- @return integer
function get_lsp_severity_count(severity)
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

function get_string_format_lsp_severity(severity_symbol, severity_count)
    -- @type string
    local string_severity = ""

    if severity_count ~= 0 then
        if severity_symbol == 'E' then
            string_severity = string.format('%s %s %s ', '%#LspDiagnosticsSignError#', severity_symbol, severity_count)
        elseif severity_symbol == 'W' then
            string_severity = string.format('%s %s %s ', '%#LspDiagnosticsSignWarning#', severity_symbol, severity_count)
        elseif severity_symbol == 'H' then
            string_severity = string.format('%s %s %s ',
                "%#LspDiagnosticsSignHints#", severity_symbol, severity_count)
        end
    end

    return string_severity
end

return M

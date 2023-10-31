local M = {}
local MODES = { n = 'N', v = 'V', i = 'I' }

-- @return string
function M.get_nvim_mode()
    local nvim_mode = vim.api.nvim_get_mode()['mode']

    for key, value in pairs(MODES) do
        if key == nvim_mode then
            return value
        end
    end
    return 'N'
end

vim.cmd('highlight ModeMsg guifg=Orange')

return M

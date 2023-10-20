local lsp = require('other_modules/statusline_configs/_lsp')

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
        "%#Normal#",
        ' ',
        '%F',
        ' ',
        '%m',
        "%#Normal#",
        '%=',
        lsp.lsp(),
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

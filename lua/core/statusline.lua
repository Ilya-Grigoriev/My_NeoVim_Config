local lsp = require('other_modules/statusline_configs/_lsp')
local file_info = require('other_modules/statusline_configs/file_info')
local line_info = require('other_modules/statusline_configs/line_info')



Statusline = {}
Statusline.active = function()
    return table.concat {
        file_info.file_info(),
        '%=',
        lsp.lsp(),
        line_info.line_info(),
    }
end

function Statusline.inactive()
    return " %F"
end

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

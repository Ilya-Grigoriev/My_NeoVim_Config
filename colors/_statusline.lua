local lsp = require('statusline/_lsp')
local file_info = require('statusline/file_info')

Statusline = {}
Statusline.active = function()
    return table.concat {
        file_info.file_info(),
        '%=',
        lsp.lsp(),
    }
end

function Statusline.inactive()
    return " %F"
end

function Statusline.short()
    return ""
end

-- TODO: make global statusline for NvimTree
vim.api.nvim_exec([[
  augroup Statusline
  au!
  au WinEnter,BufEnter * setlocal statusline=%!v:lua.Statusline.active()
  au WinLeave,BufLeave * setlocal statusline=%!v:lua.Statusline.inactive()
  au BufEnter NvimTree_1 setlocal statusline=%!v:lua.Statusline.short()
  augroup END
]], false)

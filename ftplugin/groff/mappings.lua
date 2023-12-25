-- local groff = vim.api.nvim_create_augroup('groff', { clear = true })
--
-- vim.api.nvim_create_autocmd(
--     'FileChangedShellPost',
--     {
--         pattern = 'groff',
--         callback = function(arg)
--             filename = vim.fn.expand('%')
--             vim.cmd.terminal(string.format('autocompiler_groff %s &', filename))
--         end
--     }
-- )

-- vim.keymap.set('n', "'tl", function()
--         filename = vim.fn.expand('%')
--         vim.cmd.terminal()
--         vim.cmd.startinsert()
--         command = string.format('setsid run_entr %s &', filename)
--         vim.cmd('insert! ' .. command)
--     end,
--     {
--         buffer = 0, desc = 'Tracking changes of groff file'
--     }
-- )
vim.keymap.set('n', "'tl", ':r! setsid run_entr % &<CR>', { buffer = 0 })
vim.keymap.set('n', "'ts", ':!pkill -f "entr -n autocompiler_groff"<CR>', { buffer = 0, desc = 'Stop process of entr' })

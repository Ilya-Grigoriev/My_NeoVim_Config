vim.keymap.set('n', ',pa', function()
    vim.cmd('split')
    vim.cmd('horizontal resize 7')
    vim.cmd.terminal('python -m pytest')
    vim.cmd.startinsert()
end, { desc = 'Run pytest for all tests' })

vim.keymap.set('n', ',pf', function()
    vim.cmd('split')
    vim.cmd('horizontal resize 7')
    vim.cmd.terminal('python -m pytest %')
    vim.cmd.startinsert()
end, { desc = 'Run pytest for current file' })

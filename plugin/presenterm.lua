local presenterm = vim.api.nvim_create_augroup("Presenterm", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    group = presenterm,
    callback = function(args)
        vim.keymap.set('n', 'ps', ':vsplit | term presenterm %<CR>', { desc = "Run presenterm", buffer = args.buf })
    end,
})

vim.api.nvim_create_autocmd(
    { 'TermOpen' },
    {
        pattern = 'term://*presenterm *',
        group = presenterm,
        callback = function(_)
            vim.cmd('set showtabline=0')
            vim.cmd('set nonumber')
            vim.cmd('set noshowcmd')
            vim.cmd('set noruler')
            vim.cmd('set noshowmode')
            vim.cmd('set laststatus=0')
            vim.cmd('call feedkeys("\\<C-\\>\\<C-n>\\<CR>i")')
        end
    }
)

vim.api.nvim_create_autocmd(
    { 'TermClose' },
    {
        pattern = 'term://*presenterm*',
        group = presenterm,
        callback = function(args)
            vim.cmd('set showtabline=1')
            vim.cmd('set number')
            vim.cmd('set showmode')
            vim.cmd('set showcmd')
            vim.cmd('set ruler')
            vim.cmd('set laststatus=2')
            vim.cmd(string.format('e %s', args['file']))
        end
    }
)

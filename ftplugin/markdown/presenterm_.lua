vim.keymap.set('n', ',ps', ':vsplit | term presenterm %<CR>', { buffer = 0, desc = "Run presenterm" })
vim.keymap.set('n', ',pf', ':term presenterm -e %<CR>', { buffer = 0, desc = 'Export current markdown file to pdf' })

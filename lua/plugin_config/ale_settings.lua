local g = vim.g

g.ale_linters = {python= {'ruff', 'pyright'}}
g.ale_fixers = {python= {'black', 'isort'}, javascript={'prettier'}, 
html={'prettier'}, css={'prettier'}}

g.ale_fix_on_save = 0
g.ale_echo_msg_format = '[%linter%] %s [%severity%]'
g.ale_warn_about_trailing_whitespace = 0
g.ale_virtualtext_cursor = 'disabled'
g.ale_sign_column_always = 0
vim.cmd[[
highlight clear ALEErrorSign
highlight clear ALEWarningSign
]]
g.ale_sign_error = ''
g.ale_sign_warning = ''
g.ale_linters_explicit = 1
vim.keymap.set('n', '<S-f>', ':ALEFix black isort<CR>', {})

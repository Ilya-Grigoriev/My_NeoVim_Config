local g = vim.g

-- g.ale_linters = { python= { 'flake8', 'mypy', 'pylint', 'ruff', 'jedi' } }
g.ale_linters = {python= {'ruff', 'flake8', 'pylint', 'mypy', 'pydocstring'}}
g.ale_fixers = {python= {'black', 'isort'}}
g.ale_fix_on_save = 1
-- Запуск линтера, только при сохранении
g.ale_echo_msg_format = '[%linter%] %s [%severity%]'

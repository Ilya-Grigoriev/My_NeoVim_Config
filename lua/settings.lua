local o = vim.o

o.number = true
o.shiftwidth = 4
o.tabstop = 4
o.encoding = "UTF-8"
o.mouse = "a"
o.title = true
o.softtabstop = 4
o.textwidth = 79
o.autoindent = true
o.expandtab = true
o.cursorline = true
o.scrolloff = 5

vim.cmd [[let g:clipboard = {
  \   'name': 'xclip-xfce4-clipman',
  \   'copy': {
  \      '+': 'xclip -selection clipboard',
  \      '*': 'xclip -selection clipboard',
  \    },
  \   'paste': {
  \      '+': 'xclip -selection clipboard -o',
  \      '*': 'xclip -selection clipboard -o',
  \   },
  \   'cache_enabled': 1,
  \ }]]

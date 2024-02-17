vim.keymap.set('n', "'c", ":!latex % && dvipdf %:r.dvi<CR>", { buffer = 0, desc="Conver from LaTeX to PDF" })
vim.keymap.set('n', "'o", ":!open %:r.pdf<CR>", { buffer = 0 })

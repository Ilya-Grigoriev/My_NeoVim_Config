vim.g.nvim_tree_auto_open = 1
vim.g.nvim_tree_width = 25
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_indent_markers = 1

vim.opt.termguicolors = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- If you want to use netrw
-- vim.g.netrw_banner = 0
-- vim.g.netrw_browse_split = 3
-- vim.g.netrw_altv = 1
-- vim.g.netrw_liststyle = 3


vim.keymap.set('n', '<C-n>', ':CHADopen<CR>', {})

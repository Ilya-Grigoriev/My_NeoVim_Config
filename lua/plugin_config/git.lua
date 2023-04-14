vim.api.nvim_set_keymap("n", ",g", ":!git ", {})
vim.api.nvim_set_keymap('n', ',ga', ':!git add ', {})
vim.api.nvim_set_keymap('n', ',gcm', ':!git commit ', {})
vim.api.nvim_set_keymap('n', ',gs', ':!git status<CR>', {})
vim.api.nvim_set_keymap('n', ',gco', ':!git checkout ', {})
vim.api.nvim_set_keymap('n', ',gl', ':!git log<CR>', {})
vim.api.nvim_set_keymap('n', ',gp', ':!git push<CR>', {})
vim.api.nvim_set_keymap('n', ',gb', ':!git branch<CR>', {})
vim.api.nvim_set_keymap('n', ',gm', ':!git merge ', {})
local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", count = 5 })
-- local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", ",gg", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})

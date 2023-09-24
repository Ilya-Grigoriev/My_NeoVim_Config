-- core
require('core/health')
require("core/settings")
require("core/keymaps")
require("core/statusline")
require("core/plugins")

-- lsp
require("lsp/_lsp_signature")
require("lsp/_mason")
require("lsp/_null_ls")
require("lsp/cmp")
require("lsp/lsp")
require("lsp/lsp_servers")

-- plugin configs
require("plugin_configs/telescope")
require("plugin_configs/neovimtree")
require("plugin_configs/commenter")
require("plugin_configs/git")
require("plugin_configs/webdevicons")
require("plugin_configs/terminal")
require("plugin_configs/python_docstring")
require("plugin_configs/gitsigns")
require("plugin_configs/snippets")
require("plugin_configs/harpoon")
require("plugin_configs/_treesitter")

-- other modules
require("other_modules/surround_text")

if vim.fn.has('termux') then
    vim.cmd [[ colorscheme habamax ]]
else
    vim.cmd [[ colorscheme gruvbox ]]
end

require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "luadoc", "vim", "vimdoc", "query", 'python' },

    sync_install = false,
    auto_install = false,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
    },
    indent = {
        enable = true,
    },
}

local lspconfig = require('lspconfig')

lspconfig.ltex.setup {
    cmd = { "ltex-ls" },
    filetypes = { "text", "plaintex", "tex", "markdown" },
    settings = {
        ltex = {
            language = "ru"
        },
    },
    flags = { debounce_text_changes = 300 },
}

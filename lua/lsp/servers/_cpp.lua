local lspconfig = require('lspconfig')

lspconfig.clangd.setup {
    filetypes = { 'c', 'cpp' }
}

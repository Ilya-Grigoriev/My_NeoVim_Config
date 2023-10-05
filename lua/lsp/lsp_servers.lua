local utils = require('core/utils')

local filename_to_lsp_name = {
    ['lsp/servers/_lua'] = 'lua-language-server',
    ['lsp/servers/_python'] = 'pyright',
    ['lsp/servers/_rust'] = 'rust_analyzer',
    ['lsp/servers/_cpp'] = 'clangd',
    ['lsp/servers/_toml'] = 'taplo',
    ['lsp/servers/_xml'] = 'lemminx',
    ['lsp/servers/_vim'] = 'vimls',
    ['lsp/servers/_latex'] = 'ltex-ls'
}

for filename, lsp_name in pairs(filename_to_lsp_name) do
    if utils.executable(lsp_name) then
        require(filename)
    end
end

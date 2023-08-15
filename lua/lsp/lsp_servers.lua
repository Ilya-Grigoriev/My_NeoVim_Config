-- Setup language servers.
local lspconfig = require('lspconfig')
local util = require 'lspconfig.util'

-- Config for LSP lua-language-server
require 'lspconfig'.lua_ls.setup {
    on_init = function(client)
        local path = client.workspace_folders[1].name
        if not vim.loop.fs_stat(path .. '/.luarc.json')
            and not vim.loop.fs_stat(path .. '/.luarc.jsonc') then
            client.config.settings = vim.tbl_deep_extend('force',
                client.config.settings.Lua, {
                    runtime = {
                        version = 'LuaJIT'
                    },
                    workspace = {
                        library = { vim.env.VIMRUNTIME }
                    }
                })

            client.notify("workspace/didChangeConfiguration",
                { settings = client.config.settings }
            )
        end
        return true
    end
}

-- Config for LSP pyright
local root_files = {
    'pyproject.toml',
    'setup.py',
    'setup.cfg',
    'requirements.txt',
    'Pipfile',
    'pyrightconfig.json',
}

local function organize_imports()
    local params = {
        command = 'pyright.organizeimports',
        arguments = { vim.uri_from_bufnr(0) },
    }
    vim.lsp.buf.execute_command(params)
end

local function set_python_path(path)
    local clients = vim.lsp.get_active_clients {
        bufnr = vim.api.nvim_get_current_buf(),
        name = 'pyright',
    }
    for _, client in ipairs(clients) do
        client.config.settings = vim.tbl_deep_extend('force',
            client.config.settings,
            { python = { pythonPath = path } }
        )
        client.notify('workspace/didChangeConfiguration', { settings = nil })
    end
end

lspconfig.pyright.setup {
    cmd = { 'pyright-langserver', '--stdio' },
    filetypes = { 'python' },
    root_dir = util.root_pattern(unpack(root_files)),
    single_file_support = true,
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                diagnosticMode = 'workspace',
            },
        },
    },
    commands = {
        PyrightOrganizeImports = {
            organize_imports,
            description = 'Organize Imports',
        },
        PyrightSetPythonPath = {
            set_python_path,
            description = 'Reconfigure pyright with the provided python path',
            nargs = 1,
            complete = 'file',
        },
    },
    docs = {
        description = [[
https://github.com/microsoft/pyright

`pyright`, a static type checker and language server for python
]],
    }
}

-- Config for LSP rust
lspconfig.rust_analyzer.setup {
    settings = {
        ['rust-analyzer'] = {},
    },
}

-- Config for LSP cpp
lspconfig.clangd.setup {
    filetypes = { 'c', 'cpp' }
}

-- Config for LSP TOML-files
lspconfig.taplo.setup {
    filetypes = { "toml" }
}

-- Config for LSP xml-files
require 'lspconfig'.lemminx.setup {
    filetypes = { 'xml' }
}

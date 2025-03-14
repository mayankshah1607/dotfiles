-- Setup neovim lua configuration
require('neodev').setup()

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

-- LSP signature
require "lsp_signature".setup({})

-- LSP settings.
--  This function gets run when an LSP connects to a particular buffer.
local on_attach = function(_, bufnr)
    -- NOTE: Remember that lua is a real programming language, and as such it is possible
    -- to define small helper and utility functions so you don't have to repeat yourself
    -- many times.
    --
    -- In this case, we create a function that lets us more easily define mappings specific
    -- for LSP related items. It sets the mode, buffer and description for us each time.
    local nmap = function(keys, func, desc)
        if desc then
            desc = 'LSP: ' .. desc
        end

        vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
    end

    nmap('H', '<cmd>Lspsaga hover_doc<CR>', '[H]over docs')
    nmap('fi', '<cmd>Lspsaga finder<CR>', '[f][i]nd references')
    nmap('pd', '<cmd>Lspsaga peek_definition<CR>', '[p]eek [d]efinition')

    nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
    nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

    nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
    nmap('gT', vim.lsp.buf.type_definition, '[G]oto [D]efinition')
    nmap('gi', vim.lsp.buf.implementation, '[G]oto [i]mplementation')
    nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
    nmap('dn', vim.diagnostic.goto_next, '[D]iagnostic [N]ext')
    nmap('dp', vim.diagnostic.goto_prev, '[D]iagnostic [P]revious')
    nmap('<leader>re', vim.lsp.buf.rename, 'Rename')

    -- Create a command `:Format` local to the LSP buffer
    vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
        vim.lsp.buf.format()
    end, { desc = 'Format current buffer with LSP' })
end

-- Enable the following language servers
--  Feel free to add/remove any LSPs that you want here. They will automatically be installed.
--
--  Add any additional override configuration in the following tables. They will be passed to
--  the `settings` field of the server config. You must look up that documentation yourself.
local servers = {
    clangd = {},
    gopls = {
        gofumpt = true,
    },
    bufls = {},
    rust_analyzer = {},
    autotools = {},
    sumneko_lua = {
        Lua = {
            workspace = { checkThirdParty = false },
            telemetry = { enable = false },
        },
    },
    lua_language_server = {},
}

local mason_lspconfig = require 'mason-lspconfig'

mason_lspconfig.setup_handlers {
    function(server_name)
        require('lspconfig')[server_name].setup {
            capabilities = capabilities,
            on_attach = on_attach,
            settings = servers[server_name]
        }
    end,
}

-- Turn on lsp status information
require('fidget').setup()

-- LSP formatting on save.
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = { "*.go", "*.rs", "*.c", ".cpp", "*.lua" },
    callback = function()
        vim.lsp.buf.format()
    end,
})

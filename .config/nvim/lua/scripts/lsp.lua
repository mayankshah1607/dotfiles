-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())


-- helper function so that `goimports` is run on write.
-- temporary workaround, see: https://github.com/neovim/nvim-lspconfig/issues/115
function org_imports(wait_ms)
    local params = vim.lsp.util.make_range_params()
    params.context = {only = {"source.organizeImports"}}
    local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, wait_ms)
    for _, res in pairs(result or {}) do
        for _, r in pairs(res.result or {}) do
            if r.edit then
                vim.lsp.util.apply_workspace_edit(r.edit,"utf-16")
            else
                vim.lsp.buf.execute_command(r.command)
            end
        end
    end
end

-- gopls
require'lspconfig'.gopls.setup{
    capabilities = capabilities,
    on_attach = function(_, bufnr)
    -- keybindings
    
    -- lspsaga
    vim.keymap.set("n", "H", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
    vim.keymap.set("n", "fi", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })
    vim.keymap.set("n", "pd", "<cmd>Lspsaga peek_definition<CR>", { silent = true })
    -- native LSP
    vim.keymap.set("n", "gd", vim.lsp.buf.definition)
    vim.keymap.set("n", "gT", vim.lsp.buf.type_definition)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
    vim.keymap.set("n", "gr", vim.lsp.buf.references)
    vim.keymap.set("n", "dp", vim.diagnostic.goto_prev)    
    vim.keymap.set("n", "dn", vim.diagnostic.goto_next)    
    vim.keymap.set("n", "<leader>re", vim.lsp.buf.rename, {buffer=0})
    -- format on save
    vim.api.nvim_command("au BufWritePost *.go lua vim.lsp.buf.format({async=truE})")
    -- organize imports on save
    vim.api.nvim_command("au BufWritePost *.go lua org_imports(3000)")
    end,
}

-- buf-language-server
require'lspconfig'.bufls.setup{
    capabilities = capabilities,
    on_attach = function(_, bufnr)    
    -- native LSP
    vim.keymap.set("n", "gd", vim.lsp.buf.definition)
    vim.keymap.set("n", "gT", vim.lsp.buf.type_definition)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
    vim.keymap.set("n", "gr", vim.lsp.buf.references)
    vim.keymap.set("n", "dp", vim.diagnostic.goto_prev)    
    vim.keymap.set("n", "dn", vim.diagnostic.goto_next)    
    vim.keymap.set("n", "<leader>re", vim.lsp.buf.rename, {buffer=0})
    -- format on save
    vim.api.nvim_command("au BufWritePost *.proto lua vim.lsp.buf.formatting()")
    end,
}

-- lsp signature
cfg = {}  -- add you config here
require "lsp_signature".setup(cfg)


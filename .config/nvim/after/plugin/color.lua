-- TokyoNight
-- vim.g.tokyonight_transparent_sidebar = true
-- vim.opt.background = "dark"
-- vim.g.rehash256 = 1

-- vim.cmd[[colorscheme tokyonight]]

-- Catppuccin
vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha

require("catppuccin").setup({
    treesitter = true,
    cmp = true,
    native_lsp = {
        enabled = true,
        virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
            },
    }
})

vim.cmd [[colorscheme catppuccin]]


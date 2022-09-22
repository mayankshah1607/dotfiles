vim.opt.termguicolors = true
vim.cmd[[highlight IndentBlanklineContextChar guifg=#ff0000 gui=nocombine]]

require("indent_blankline").setup {
    buftype_exclude = {"terminal"},
    filetype_exclude = {"dashboard", "NvimTree", "packer", "lsp-installer"},
    use_treesitter_scope = true,
    use_treesitter = true,
    show_trailing_blankline_indent = false,
    show_current_context = true,
}

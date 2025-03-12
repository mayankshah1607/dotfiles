if not vim.g.vscode then
    -- TokyoNight
    vim.g.tokyonight_transparent_sidebar = true
    vim.opt.background = "dark"
    vim.g.rehash256 = 1

    vim.cmd[[colorscheme tokyonight-storm]]

    -- Blankline
    vim.opt.termguicolors = true
    vim.cmd[[highlight IndentBlanklineContextChar guifg=#57618e gui=nocombine]]
    vim.cmd[[highlight IndentBlanklineChar guifg=#30364f gui=nocombine]]
end

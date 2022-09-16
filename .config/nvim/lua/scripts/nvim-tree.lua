require("nvim-tree").setup({
    hijack_netrw = false,
    diagnostics = {
        enable = true,
    },
    view = {
        side = "left",
        adaptive_size = true,
    },
    update_cwd = true,
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
    update_focused_file = {
        enable = true,
        update_root = true
    },
    renderer = {
        icons = {
            show = {
                folder = false,
                folder_arrow = true
            },
        },
    },
})

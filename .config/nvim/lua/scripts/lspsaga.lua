require("lspsaga").init_lsp_saga({
    -- config goes here
    finder_action_keys = {
        open = "o",
        vsplit = "s",
        split = "i",
        tabe = "t",
        quit = "<Esc>",
    },
    code_action_lightbulb = {
        enable = false,
    }
})


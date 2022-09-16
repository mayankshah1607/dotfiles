require('telescope').setup({
    defaults = {
        initial_mode = 'normal'
    }
})

require("telescope").load_extension "file_browser"

vim.api.nvim_set_keymap(
  "n",
  "<space>fb",
  ":Telescope file_browser<cr>",
  { noremap = true }
)

vim.keymap.set("n", "<leader><Esc>", "<cmd>Ex<CR>") -- To go back

-- Telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope file_browser<cr>")

-- Tab
vim.keymap.set("n", "tn", "<cmd>tabNext<cr>")
vim.keymap.set("n", "tp", "<cmd>tabprevious<cr>")
vim.keymap.set("n", "tc", "<cmd>tabclose<cr>")

-- Pane navigation
vim.keymap.set("n", "<leader>w", "<C-w>")

-- Tree
vim.keymap.set("n", "<leader>a", "<cmd>NvimTreeFindFileToggle<cr>")


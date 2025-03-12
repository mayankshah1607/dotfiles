vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

vim.opt.mouse = 'a'

vim.keymap.set('n', 'fi', "<cmd>lua require('vscode').action('editor.action.goToReferences')<CR>")
vim.keymap.set('n', 'dn', "<cmd>lua require('vscode').action('editor.action.marker.next')<CR>")
vim.keymap.set('n', '<leader>a', "<cmd>lua require('vscode').action('workbench.action.toggleSidebarVisibility')<CR>")

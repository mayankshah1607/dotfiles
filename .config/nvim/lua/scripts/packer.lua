-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Theme / colors / appearance
    use 'folke/tokyonight.nvim'
    use 'folke/lsp-colors.nvim' -- provides compatibility for highlighting
    use 'nvim-tree/nvim-web-devicons'
    use {'lukas-reineke/indent-blankline.nvim'}

    -- LSP
    use 'neovim/nvim-lspconfig'
    use({"nvimdev/lspsaga.nvim"})
    use 'williamboman/mason-lspconfig.nvim'
    use 'williamboman/mason.nvim'
    use {'j-hui/fidget.nvim'}

    -- Auto completion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    -- Syntax
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-treesitter/nvim-treesitter-context'
    use 'windwp/nvim-autopairs'
    use 'ray-x/lsp_signature.nvim'
    use 'tpope/vim-commentary'

    -- git
    use 'APZelos/blamer.nvim'
    use 'akinsho/git-conflict.nvim'

    -- Misc / productivity
    use {'nvim-telescope/telescope.nvim', tag = '0.1.4', requires = { {'nvim-lua/plenary.nvim'}}}
    use { "nvim-telescope/telescope-file-browser.nvim" }
    use {'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }}
    use 'ahmedkhalf/project.nvim'
    use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' } }
    use {"akinsho/toggleterm.nvim", tag = "*"}
    use 'folke/neodev.nvim'
    use 'github/copilot.vim'
end)

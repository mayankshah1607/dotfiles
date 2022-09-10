-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Color theme
    use 'folke/tokyonight.nvim'
    use 'folke/lsp-colors.nvim'    

    -- LSP
    use 'neovim/nvim-lspconfig'

    -- Auto completion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    -- Syntax
    use 'nvim-treesitter/nvim-treesitter'
    use 'windwp/nvim-autopairs'
    use 'ray-x/lsp_signature.nvim'

    -- Misc / productivity
    use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'preservim/nerdtree'
    use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
end)

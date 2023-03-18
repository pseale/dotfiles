-- WIP
-- this is still WIP and may not work for you.

-- step 1: to bootstrap packer.nvim, run
--           git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

-- step 2: save this file locally somewhere (not in the ~/.config/nvim directory!!!); open it file in nvim (not vim! haha don't make that mistake AGAIN)

-- step 3: `:so` this file
-- step 4: run `:PackerSync` - expect everything to install successfully
-- step 5: close nvim; open afresh -- expect it to successfully configure everything. Test via <leader>ff which loads telescope and which wasn't working when I tried this earlier.

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use "savq/melange-nvim"
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }
end)



1. to bootstrap packer.nvim, run
    ```bash
    git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    ```
2. save this file to `~/bootstrap.lua`
    ```lua
    -- WIP
    -- this is still WIP and may not work for you.



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
    ```
3. open `~/bootstrap.lua` file in nvim
4. `:so` this file
5. run `:PackerSync` - expect everything to install successfully
6. step 5: close nvim; open afresh -- expect it to successfully configure everything. Test via `<leader>ff`, which loads telescope

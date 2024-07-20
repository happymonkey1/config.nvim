local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

    -- Treesitter
    Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })

    -- Fuzzy finder
    Plug 'nvim-lua/plenary.nvim'
    Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.8' })

    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug('L3MON4D3/LuaSnip', { ['tag'] = 'v2.3.0' })
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'

    -- LSP server config
    Plug 'neovim/nvim-lspconfig'

    -- LSP server installer
    Plug('VonHeikemen/lsp-zero.nvim', { ['branch'] = 'v3.x' })

    -- LSP package manager
    Plug 'williamboman/mason.nvim'
    Plug 'williamboman/mason-lspconfig.nvim'

    -- Theme
    Plug 'rose-pine/neovim'
vim.call('plug#end')

require('config.keymap')
require('config.telescope')
require('config.treesitter')
require('config.options')
require('config.lsp')
require('config.colors')
Paint()

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

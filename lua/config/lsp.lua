local vim = vim

local lsp_zero = require('lsp-zero')
lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })
end)

local language_servers = { 'clangd', 'rust_analyzer', 'lua_ls', 'tsserver' }
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = language_servers,
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,
    },
})

local lsp_config = require'lspconfig'
lsp_config.ccls.setup {
  init_options = {
    compilationDatabaseDirectory = "build";
    index = {
      threads = 0;
    };
    clang = {
      excludeArgs = { "-frounding-math"} ;
    };
  }
}

lsp_config.ccls.setup{}

local cmp = require('cmp')
local cmp_action = lsp_zero.cmp_action()
cmp.setup({
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' },
    }, {
        { name = 'buffer' }
    }),
    mapping = cmp.mapping.preset.insert({
        ['<Up>'] = cmp.mapping.select_prev_item({ behavior = 'select' }),
        ['<Down>'] = cmp.mapping.select_next_item({ behavior = 'select' }),
        -- Enable super tab
        ['<Tab>'] = cmp_action.luasnip_supertab(),
        ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
    }),
    snippet = {
        expand = function(args)
            vim.fn['vsnip#anonymous'](args.body)
        end
    },
    window = {
        completion = cmp.config.window.bordered()
    },
})

local caps = require('cmp_nvim_lsp').default_capabilities()
for _, server in pairs(language_servers) do
    lsp_config[server].setup { capabilities = caps }
end

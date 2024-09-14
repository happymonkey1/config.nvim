
require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "cpp", "markdown", "markdown_inline", "lua", "typescript", "javascript", "rust", "json", "toml" },
    sync_install = false,
    auto_install = true,
    ignore_install = {},
    indent = {
        enable = true
    },
    highlight = {
        enable = true,
        disable = {},
    }
}


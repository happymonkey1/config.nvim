
require("toggleterm").setup({
    size = 20,
    open_mapping = [[<C-t>]],
    -- close thte terminal window when the process exits
    close_on_exit = true,
    auto_scroll = true,
    float_opts = {
        border = 'curved',
        winblend = 3,
    }
})

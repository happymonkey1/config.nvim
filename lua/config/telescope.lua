
local telescope = require('telescope')

telescope.setup {
    defaults = {
        mappings = {
            
        }
    }
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fw', function()
    local word = vim.fn.expand('<cword>')
    builtin.grep_string({ search = word })
end)
vim.keymap.set('n', '<leader>fW', function()
    local word = vim.fn.expand('<cWORD>')
    builtin.grep_string({ search = word })
end)

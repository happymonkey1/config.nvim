
local trouble = require('trouble')

local vim = vim
vim.keymap.set('n', '<leader>tt', function()
    trouble.toggle('diagnostics')
end)

vim.keymap.set('n', '[t', function()
    trouble._action('next')
end)

vim.keymap.set('n', ']t', function()
    trouble.previous({ skip_groups = true, jump = true })
end)

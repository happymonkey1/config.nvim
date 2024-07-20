local vim = vim

vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>fd', vim.cmd.Ex)

vim.keymap.set('x', '<leader>p', [["_dP]])

vim.keymap.set('n', "q", '<nop>')

-- Move line up or down
vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv')

vim.keymap.set('n', 'J', 'mzJ`z')

-- Copy line
vim.keymap.set({'n', 'v'}, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])
-- Delete Line
vim.keymap.set({'n', 'v'}, '<leader>d', [["_d]])


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

vim.keymap.set({'n','v'}, 'j', 'k')
vim.keymap.set({'n','v'}, 'k', 'j')

-- nvim-tree
vim.keymap.set({'n'}, '<C-a>', '<cmd>NvimTreeToggle<CR>')
vim.keymap.set({'v'}, '<leader>fe', '<cmd>NvimTreeFocus<CR>')

-- terminal
-- vim.keymap.set({'n'}, '<C-t>', '<cmd>ToggleTerm<CR>')
-- Escape terminal
vim.keymap.set('t', '<C-x>', '<C-\\><C-N>')

-- Change focused buffer
vim.keymap.set('n', '<C-Up>', '<C-w>k', { noremap = true })
vim.keymap.set('n', '<C-Down>', '<C-w>j', { noremap = true })
vim.keymap.set('n', '<C-Left>', '<C-w>h', { noremap = true })
vim.keymap.set('n', '<C-Right>', '<C-w>l', { noremap = true })

-- Reverse up & down keys
vim.keymap.set({'n','v'}, 'j', 'k', { noremap = true })
vim.keymap.set({'n','v'}, 'k', 'j', { noremap = true })

vim.keymap.set('n', '<tab>', function()
    require('nvchad.tabufline').next()
end)

vim.keymap.set('n', '<S-tab>', function()
    require('nvchad.tabufline').prev()
end)


vim.keymap.set('n', '<leader>ch', ':nohl<CR>')

vim.keymap.set('n', '<C-k>', '<C-w><C-k>')
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
vim.keymap.set('n', '<C-h>', '<C-w><C-h>')
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')

vim.keymap.set('n', '<M-j>', ':cnext<CR>zz')
vim.keymap.set('n', '<M-k>', ':cprev<CR>zz')
vim.keymap.set('n', '<leader>cc', ':cclose<CR>')
vim.keymap.set('n', '<leader>co', ':copen<CR>')

vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv')

vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('n', 'J', 'mzJ`z')

vim.keymap.set('x', '<leader>p', '"_dP')

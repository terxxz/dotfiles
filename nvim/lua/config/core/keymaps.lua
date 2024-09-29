-- Split windows
vim.keymap.set('n', '<leader>sv', '<C-w>v') -- Split window vertically
vim.keymap.set('n', '<leader>sh', '<C-w>s') -- Split window horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=') -- Make windows equal width and height
vim.keymap.set('n', '<leader>sx', ':close<CR>') -- Close current window

-- Navigation between windows
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')
vim.keymap.set('n', '<C-h>', '<C-w><C-h>')
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')

-- Resize windows
vim.keymap.set('n', '<C-Up>', ':resize +2<CR>')
vim.keymap.set('n', '<C-Down>', ':resize -2<CR>')
vim.keymap.set('n', '<C-Left>', ':vertical resize +2<CR>')
vim.keymap.set('n', '<C-Right>', ':vertical resize -2<CR>')

vim.keymap.set('n', '<leader>ch', ':nohl<CR>') -- Clear search highlight

vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv') -- Move line up
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv') -- Move line down

vim.keymap.set('n', 'J', 'mzJ`z') -- Append line below to line that the cursor is

vim.keymap.set('x', '<leader>p', '"_dP') -- Nice paste btw)

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set({'i', 'v'}, 'jj', '<Esc>', { noremap = true })

-- Remap command key 
vim.keymap.set('n', ';', ':', { noremap = true})

-- Faster window navigation
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>', { noremap = true})
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>', { noremap = true})
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>', { noremap = true})
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>', { noremap = true})

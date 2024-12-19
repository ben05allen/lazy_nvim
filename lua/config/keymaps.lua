-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set({'i', 'v'}, 'jj', '<Esc>', { noremap = true })

-- use ; instead of : for commands
vim.keymap.set('n', ';', ':', { noremap = true })

-- faster window navigation
vim.keymap.set('n', '<C-h>', ':wincmd h', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', ':wincmd j', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', ':wincmd k', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', ':wincmd l', { noremap = true, silent = true })

-- This file is for setting the keybindings

local map = vim.api.nvim_set_keymap
vim.g.mapleader = ","   -- setting the leader key as ,

map('', '<C-i>', '<Esc>i', { noremap = true}) -- to enter insert mode

--TAB CONTROLS
map('n', '<leader>t', ':tabnew<CR>', {noremap = true, silent = true}) -- for newtab
map('n', '<leader>X', ':tabclose<CR>', {noremap = true, silent = true}) -- for closing tab
map('n', '<leader>a', ':tabprevious<CR>', {noremap = true, silent = true}) -- move to previous tab
map('n', '<leader>s', ':tabnext<CR>', {noremap = true})  --move to next tab

--BUFFER CONTROLS
map('n', '<leader>b', ':enew<CR>', {noremap = true}) -- for opening a buffer
map('n', '<leader>x', ':bdelete<CR>', {noremap = true}) -- for closing a buffer
map('n', '<leader>k', ':bprevious<CR>', {noremap = true}) -- move to previous buffer
map('n', '<leader>l', ':bnext<CR>', {noremap = true})  --move to next buffer


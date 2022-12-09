local bind = vim.keymap.set

-- Do not yank with x
bind('n', 'x', '"_x')

-- Increment/decrement
bind('n', '+', '<C-a>')
bind('n', '-', '<C-x>')

-- New Tab
bind('n', 'te', ':tabedit<Return>', { silent = true })

-- Open Tree
bind('n', '<leader><leader>', ':NvimTreeToggle<CR>')

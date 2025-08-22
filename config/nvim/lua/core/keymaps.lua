-- define common options
local opts = {
    noremap = true,
    silent = ture,
}

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-----------------
-- Insert mode --
-----------------
vim.keymap.set('i', '<A-h>', '<Left>', opts)
vim.keymap.set('i', '<A-l>', '<Right>', opts)
vim.keymap.set('i', '<A-j>', '<Down>', opts)
vim.keymap.set('i', '<A-k>', '<Up>', opts)
vim.keymap.set('i', 'jk','<Esc>', opts)
------------------------
-- Custom keybinding ---
------------------------

vim.keymap.set('n','<leader>d', vim.diagnostic.open_float, { desc = 'Open Floating Diagnostice' })
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle NvimTree (打开/关闭)' })

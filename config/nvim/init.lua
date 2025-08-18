-- disable netrw at the very start of init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('config.lazy')
require('core.options')
require('core.keymaps')
require('core.lsp')
require('core.colors')

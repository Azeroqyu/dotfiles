vim.keymap.set('n', '<leader>fb', '<cmd>Oil<CR>', { desc = '[F]ile [B]rowser (Oil)' })

-- window maps
vim.keymap.set('n', '=', [[<cmd>vertical resize +5<cr>]]) -- ++ vertically
vim.keymap.set('n', '-', [[<cmd>vertical resize -5<cr>]]) -- -- vertically

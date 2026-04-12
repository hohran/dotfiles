local builtin = require('telescope.builtin')
-- Telescope
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>FF', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>/', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

vim.keymap.set('n', '<leader>ee', '<cmd>Oil<cr>', { desc = 'Exit from buffer' })
vim.keymap.set('n', 'gd', '<C-]>', { desc = 'Go to definition' })

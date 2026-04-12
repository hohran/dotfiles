-- Diagnostics
vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = '',
            [vim.diagnostic.severity.WARN] = '',
        },
        linehl = {
            [vim.diagnostic.severity.ERROR] = '',
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = 'ErrorMsg',
        },
    },
})
vim.keymap.set('n', '<leader>sd', vim.diagnostic.show, { desc = "Show diagnostics" })
vim.keymap.set('n', '<leader>]d', vim.diagnostic.get_next, { desc = "Get next diagostic" })
vim.keymap.set('n', '<leader>[d', vim.diagnostic.get_prev, { desc = "Get prev diagostic" })
vim.api.nvim_create_autocmd("CursorHold", {
  pattern = "*",
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false })
  end,
})

vim.keymap.set('n', '<leader>h', ':noh<CR>', { desc = "Clear search highlight" })

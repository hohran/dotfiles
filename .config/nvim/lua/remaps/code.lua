vim.keymap.set('n', '<leader>c', 'gcc', { desc = "Comment a line" })
vim.keymap.set('n', '<leader>da', ':lua vim.lsp.buf.code_action({ apply = true })<CR>', { noremap = true, silent = true, desc = "Show code actions" })
vim.keymap.set('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true, desc = "Rename symbol" })

local copilot_enabled = true
vim.keymap.set('n', '<leader>cd', function ()
    if copilot_enabled then
        vim.g.copilot_enabled = false
        copilot_enabled = false
        print("Copilot disabled")
    else
        vim.g.copilot_enabled = true
        copilot_enabled = true
        print("Copilot enabled")
    end
end, { noremap = true, silent = true, desc = "Toggle Copilot" })

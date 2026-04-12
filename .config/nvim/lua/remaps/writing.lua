-- Moving selected lines
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected line up" })
vim.keymap.set("v", "J", ":m '<1<CR>gv=gv", { desc = "Move selected line down" })

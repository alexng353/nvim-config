-- Centre everything
vim.api.nvim_set_keymap("n", "n", "nzzzv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "N", "Nzzzv", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "G", "Gzzzv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gg", "ggzzzv", { noremap = true, silent = true })

-- Exit terminal mode
vim.api.nvim_set_keymap("t", "<Esc><C-n>", "<C-\\><C-n>", { noremap = true, silent = true })

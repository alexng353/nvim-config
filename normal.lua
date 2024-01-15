
-- Load custom vimscript user config
vim.cmd('autocmd VimEnter * silent! source ~/.nvimrc')
vim.api.nvim_set_option("clipboard","unnamed")


vim.cmd("tnoremap <Esc><C-n> <C-\\><C-n>")

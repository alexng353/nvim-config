local treesitter = require "plugins/treesitter"
local leap = require "plugins/leap"

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
{
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
},
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",

  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  "nvim-lua/plenary.nvim",
  "ThePrimeagen/harpoon",
  leap,
  treesitter,
}, {
  root = vim.fn.stdpath("data") .. "/lazy-alex",
  lockfile = vim.fn.stdpath("config") .. "/lazy-alex-lock.json", -- lockfile generated after running update.
})

vim.g.mapleader = " "

-- Load custom vimscript user config
vim.cmd('autocmd VimEnter * silent! source ~/.nvimrc')
vim.cmd('autocmd VimEnter * silent! set colorcolumn=80')
vim.cmd('autocmd VimEnter * silent! hi ColorColumn ctermbg=#242424 guibg=#242424')


vim.api.nvim_set_option("clipboard","unnamed")

-- keybinds
local sk = vim.api.nvim_set_keymap
sk("t", "<Esc><C-n>", "<C-\\><C-n>", { noremap = true, silent = true })

sk("n", "<Leader>w", ":w<Cr>:echo 'wrote to file'<Cr>", { noremap = true, silent = true })
sk("n", "<Leader>qq", ":q<Cr>", { noremap = true, silent = true })

sk("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
sk("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
sk("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
sk("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

vim.wo.number = true
vim.wo.relativenumber = true

vim.cmd.colorscheme "catppuccin-macchiato"

sk('v', '<Tab>', ':normal I<Tab><CR>', { noremap = true })

-- Harpoon stuff
-- sk("n", "", "", { noremap = true, silent = true })

-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Don't spellcheck by default. <leader>us to turn on
vim.api.nvim_create_augroup("lazyvim_wrap_spell", { clear = true })

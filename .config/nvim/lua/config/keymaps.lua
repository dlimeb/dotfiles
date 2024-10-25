-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Most of the keymaps from my previous config are part of LazyVim's defaults,
-- or close to it. Noting them here for easy cheatsheet so I don't need to
-- visit the above URL (though there are other helpful mappings there too).
--
-- Window resizing is <C-up/down/left/right>
-- Clear search is <esc> (previously <leader><space> but that's for telescope now)
-- `gco` or `gcO` for add a comment above/below
-- <leader>fn to create new file
-- <leader>qq to quit all (I'll probably still :wqa or :qa!)
-- <leader>ui to inspect syntax info under cursor (previously <leader>I)
-- <leader>uw to togle line wrapping
-- `gq}` is a habit to reflow long lines, but internals have changed (cf conform.nvim) so use `gw` or gww` instead.

--
-- CUSTOMIZATIONS
--
-- LazyVim's default for creating splits is <leader>- and <leader>| for
-- horiz/vert. That's a bit awkward so I'm going to try sticking with what I'm
-- familiar with for now.
-- I'm also familiar with <leader>x to close a window, but that prefix is used
-- for something else, so I'll see if I can learn the LazyVim default of
-- <leader>wc
vim.keymap.set("n", "<Leader>v", "<C-w>v<C-w>l", {})
vim.keymap.set("n", "<Leader>h", "<C-w>s<C-w>j", {})
-- vim.keymap.set("n", "<Leader>x", "<C-w>c", {})

-- Toggle showing whitespace characters
vim.keymap.set("n", "<Leader>W", ":set nolist!<CR>", {})

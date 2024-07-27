--
-- init.lua - Neovim config file
--

-- Set leader key
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Initialize lazy.vim package manager
require("config.lazy")


-- SETTINGS
--
-- Lines, tabs, spaces
vim.o.tabstop = 2                 -- number of spaces a tab character in the file will look like
vim.o.expandtab = true            -- pressing Tab will enter spaces instead of tab character
vim.o.softtabstop = 2             -- number of spaces to insert instead of tab character
vim.o.shiftwidth = 2              -- number of spaces inserted when indenting
vim.o.autoindent = true           -- keep same indent level when making new line
vim.o.smartindent = true          -- indent smartly, eg another level after an opening {
vim.o.wrap = true                 -- wrap lines
vim.o.linebreak = true            -- ... at a reasonable spot

-- Search
vim.o.ignorecase = true           -- case insensitive searching
vim.o.smartcase = true            -- ... unless there is a cap in the search pattern
vim.o.gdefault = true             -- adds /g by default to replace all instances

-- Misc UI settings
vim.wo.number = true              -- view line numbers
vim.wo.relativenumber = true      -- ... as distance away from current
vim.o.termguicolors = true        -- set true colour
vim.o.showmode = false            -- hide mode on statusline (lualine plugin does)
vim.o.showmatch = true            -- highlight matching brackets
vim.o.foldmethod = indent         -- enable folding
vim.o.formatoptions = 'jcroqln'   -- set some formatting features (see :h fo-table)


-- KEYBINDINGS
--
-- Splits
-- Note <C-h/j/k/l> for switching between splits and panes is set in the
-- vim-tmux-navigator plugin config
vim.keymap.set('n', '<Leader>v', '<C-w>v<C-w>l', {})
vim.keymap.set('n', '<Leader>h', '<C-w>s<C-w>j', {})
vim.keymap.set('n', '<Leader>x', '<C-w>c', {})

-- Window resizing
vim.keymap.set('n', '<C-S-Right>', '5<C-w>>', {})
vim.keymap.set('n', '<C-S-Left>', '5<C-w><', {})
vim.keymap.set('n', '<C-S-Up>', '<C-w>-', {})
vim.keymap.set('n', '<C-S-Down>', '<C-w>+', {})

-- Scroll content by a few lines
vim.keymap.set('n', '<C-e>', '<C-e><C-e><C-e>', {})
vim.keymap.set('n', '<C-y>', '<C-y><C-y><C-y>', {})

-- Insert newline without switching to Insert mode
vim.keymap.set('n', '<Leader>O', 'O<ESC>', {})

-- Toggle showing whitespace characters
-- NOTE: May not need this, trim.nvim strips end of line etc on save
-- and linters should probably do convert tabs to spaces
vim.o.listchars = 'tab:>=,trail:~,nbsp:%,eol:$,extends:>,precedes:<,space:•'
vim.keymap.set('n', '<Leader>W', ':set nolist!<CR>', {})

-- Quick access to vim config
vim.keymap.set('n', '<Leader>sv', ':source $MYVIMRC<CR>')
vim.keymap.set('n', '<Leader>ev', ':e $MYVIMRC<CR>')

-- Clear search term highlighting
vim.keymap.set('n', '<Leader><space>', ':noh<CR>')

-- Inspect syntax info under cursor
vim.keymap.set('n', '<Leader>I', ':Inspect<CR>', {})
--
-- Plugin: Lazy
vim.keymap.set('n', '<Leader>L', ':Lazy<CR>', {})

-- Plugin: Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<Leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<Leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<Leader>fh', builtin.help_tags, {})

-- Plugin: nvim-tree
vim.keymap.set('n', '<Leader>tt', ':NvimTreeToggle<CR>', {})
vim.keymap.set('n', '<Leader>tf', ':NvimTreeFocus<CR>', {})
vim.keymap.set('n', '<Leader>ts', ':NvimTreeFindFile<CR>', {})

-- Plugin: nvim-comments
-- These are the fancy comments to highlight TODO, XXX, etc
-- Commands can display all of them in Telescope or Quickfix window
-- TODO: figure out keymapping, want to keep ,t for nvim-tree
-- vim.keymap.set('n', '<Leader>tt', ':TodoTelescope<cr>', {})


-- SHORTCUTS AND HELPERS
--
-- Insert timestamp
vim.cmd("iab <expr> _ds strftime('%Y-%m-%d')")

vim.cmd("au BufEnter *.md :syntax sync fromstart")

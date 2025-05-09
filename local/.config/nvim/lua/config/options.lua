-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Set leader key
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Many of my previous settings are in LazyVim's defaults at the link above. Below are the exceptions.

--
-- LINES, TABS, SPACES
--
-- Number of spaces to insert instead of tab character
vim.o.softtabstop = 2

-- Keep same indent level when making new line
vim.o.autoindent = true

-- Preserve indentation when wrapping
vim.o.breakindent = true

-- Wrap lines, at a reasonable spot
vim.o.wrap = true
vim.o.linebreak = true

--
-- SEARCH
--
-- Add /g by default to replace all instances
vim.o.gdefault = true

-- Set highlight on search
vim.o.hlsearch = true

--
-- MISC EDITING
--
-- Highlight matching brackets
vim.o.showmatch = true

-- Set how whitespace characters are displayed
vim.o.list = false
vim.o.listchars = "tab:» ,trail:~,nbsp:␣,eol:$,extends:>,precedes:<,space:•"

-- Set how text with "conceal" syntax is displayed. This is used most in
-- markdown files to show fancy lists, checkboxes, etc which I don't want)
vim.o.conceallevel = 0

-- Set or override some filetype associations
vim.filetype.add({
  extension = {

    -- There is no good LSP for Nunjucks so a filetype of `nunjucks` does
    -- nothing. Workarounds:
    -- - Set ft to `html` to highlight HTML syntax (njk parts show plain)
    -- - Set ft to `jinja` (close enough) to see njk parts (HTML as plain)
    -- (Setting ft to html.jinja doesn't work either)
    njk = "html", -- nunjucks
  },
})

--
-- UI
--
-- Yup, a nerd font is installed
vim.g.have_nerd_font = true

-- Don't sync clipboard with system
vim.o.clipboard = ""

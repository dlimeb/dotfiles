-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
--
-- Keymappings are shown in a menu upon hitting <leader> by the which-key.nvim plugin
--
-- It's possible to set keymaps here in the traditional vim way:
-- vim.keymap.set("n", "<leader>uW", ":set list!<CR>", { desc = "Toggle whitespace" })
--
-- But it's preferable to register keymaps with which-key directly, which gets
-- some nice enhancements like icons, group setting, etc
--

local wk = require("which-key")

wk.add({
  -- Toggle showing invisible characters
  -- See vim.o.listchars in options.lua for characters to use
  { "<leader>uW", "<cmd>set list!<cr>", desc = "Toggle whitespace", mode = "n" },

  -- Plugin: ccc.nvim
  -- Color preview viewing, picking, and converting between formats
  -- Note cursor needs to be on the color itself, not just the line
  -- Register under the existing ,c group for code
  { "<leader>cc", group = "color", desc = "Manage color" },
  { "<leader>cct", "<cmd>CccHighlighterToggle<cr>", desc = "Toggle previews", mode = "n" },
  { "<leader>ccp", "<cmd>CccP<cr>", desc = "Open picker", mode = "n" },
  { "<leader>ccc", "<cmd>CccConvert<cr>", desc = "Convert format", mode = "n" },

  -- Plugin: obsidian.nvim
  -- See https://github.com/epwalsh/obsidian.nvim?tab=readme-ov-file#commands for all available commands
  { "<leader>o", group = "obsidian", desc = "Obsidian" },

  { "<leader>on", "<cmd>ObsidianNew<cr>", desc = "New note", mode = "n" },
  { "<leader>oo", "<cmd>ObsidianQuickSwitch<cr>", desc = "Open note", mode = "n" },
  -- { "<leader>od", "<cmd>ObsidianToday<cr>", desc = "Open today", mode = "n" },
  { "<leader>or", "<cmd>ObsidianRename<cr>", desc = "Rename note", mode = "n" },
  { "<leader>ot", "<cmd>ObsidianTemplate<cr>", desc = "Insert template", mode = "n" },
})

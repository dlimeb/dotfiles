--
-- A single file to load all colorschemes, rather than
-- separate plugin files for each
--

return {
  -- Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {},
  },

  -- tell LazyVim which one to load
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
    },
  },
}

--
-- https://github.com/s1n7ax/nvim-window-picker
--

return {
  "s1n7ax/nvim-window-picker",
  name = "window-picker",
  event = "VeryLazy",
  version = "2.*",
  config = function()
    require("window-picker").setup({
      hint = "statusline-winbar",

      -- whether to show 'Pick window:' prompt
      show_prompt = false,

      picker_config = {
        -- whether you want to use winbar instead of the statusline
        -- need to use winbar bc otherwise it conflicts with lualine
        statusline_winbar_picker = {
          use_winbar = "always",
        },
      },
      highlights = {
        winbar = {
          focused = {
            fg = "#1E2030",
            bg = "#A6E3A1",
            bold = true,
          },
          unfocused = {
            fg = "#1E2030",
            bg = "#8AACF4",
            bold = true,
          },
        },
      },
    })
  end,
}

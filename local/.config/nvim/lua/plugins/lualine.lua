local diff = {
  "diff",
  symbols = { added = " ", modified = " ", removed = " " },
}

local diagnostics = {
  "diagnostics",
  sources = { "nvim_diagnostic" },
  symbols = { error = " ", warn = " ", info = " ", hint = " " },
}

local branch = {
  "branch",
  icon = "",
}

local searchcount = {
  "searchcount",
  color = "Search",
  fmt = function(s)
    if s == "" or s == "[0/0]" then
      return ""
    end
    local search_pattern = vim.fn.getreg("/")
    return "SEARCH: " .. search_pattern .. " " .. s
  end,
}

local selectioncount = {
  "selectioncount",
  color = "Visual",
}

return {
  "nvim-lualine/lualine.nvim",
  init = function()
    vim.o.showtabline = 0
  end,
  opts = {
    options = {
      theme = {
        normal = {
          a = "Visual",
          b = "CursorLine",
          c = "StatusLine",
          x = "StatusLine",
          y = "StatusLine",
          z = "StatusLine",
        },
      },
      globalstatus = true,
      always_divide_middle = false,
      always_show_tabline = false,
      component_separators = "",
      section_separators = "",
      disabled_filetypes = {
        statusline = { "neo-tree", "git", "fugitive", "toggleterm", "trouble" },
        winbar = { "neo-tree", "DiffviewFiles", "git" },
      },
    },
    sections = {
      lualine_a = {
        "mode",
      },
      lualine_b = {
        branch,
        diff,
        diagnostics,
      },
      lualine_c = {
        -- "filename",
        LazyVim.lualine.pretty_path({
          modified_sign = "  ",
          readonly_icon = " 󰌾 ",
        }),
      },
      lualine_x = {},
      lualine_y = {},
      lualine_z = {
        selectioncount,
        searchcount,
        "location",
        "progress",
        "filetype",
      },
    },

    winbar = {},
    inactive_winbar = {},
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_y = {},
      lualine_z = {},
      lualine_c = {},
      lualine_x = {},
    },
  },
}

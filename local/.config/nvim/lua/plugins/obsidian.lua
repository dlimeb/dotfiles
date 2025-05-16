---
--- https://github.com/epwalsh/obsidian.nvim
---

return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  -- ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    -- refer to `:h file-pattern` for more examples
    "BufReadPre /Users/dlimeb/Library/Mobile Documents/iCloud~md~obsidian/Documents/dlimeb/*.md",
    "BufNewFile /Users/dlimeb/Library/Mobile Documents/iCloud~md~obsidian/Documents/dlimeb/*.md",
  },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "Personal",
        path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/dlimeb",
      },
      -- {
      --   name = "work",
      --   path = "~/vaults/work",
      -- },
    },

    -- Main notes directory, if it is a specific subdirectory of the vault
    notes_subdir = "Notes",
    new_notes_location = "notes_subdir",

    -- Templates directory and config
    templates = {
      folder = "Utilities/Templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
    },

    -- Daily notes
    daily_notes = {
      -- Optional, if you keep daily notes in a separate directory.
      -- TODO: This is not handling my yyyy/mm/dd subdirectories
      -- :ObsidianToday will create a new note in /Calendar only -- the daily
      -- note template *does* move new files, but presumably opening will still
      -- not work
      folder = "Calendar",
      -- Optional, if you want to change the date format for the ID of daily notes.
      -- date_format = "%Y-%m-%d",
      -- Optional, if you want to change the date format of the default alias of daily notes.
      -- alias_format = "%B %-d, %Y",
      -- Optional, default tags to add to each new daily note created.
      -- default_tags = { "daily-notes" },
      -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
      -- template = nil,
    },

    -- Optional, completion of wiki links, local markdown links, and tags using nvim-cmp.
    -- TODO: Probably want to enable this at some point
    completion = {
      -- Set to false to disable completion.
      -- nvim_cmp = true,
      -- Trigger completion at 2 chars.
      -- min_chars = 2,
    },

    -- Optional, customize how note IDs are generated given an optional title.
    --
    -- Based on docs example of creating note filenames in a zettelkasten
    -- format with an ID, which I don't need. With a title like "My new note"
    -- provided, this will create a filename of "my-new-note.md" (note this is
    -- different than the Obsidian desktop app, where a template auto-adds a
    -- title based on the filename, so I have a lot of "My new note.md") If a
    -- title is not provided, this creates a filename like "Untitled-XXXX.md"
    -- with 4 random letters.
    -- WARN: A randomized suffix is a good idea overall, bc this will happily
    -- overwrite an existing file if I choose a title that already exists. If I
    -- end up doing obsidian things in nvim a lot I should handle this
    -- properly.
    --
    note_id_func = function(title)
      local filename = ""
      if title ~= nil then
        -- If title is given, transform it into valid file name.
        filename = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
      else
        -- If title is nil, just add 4 random uppercase letters
        filename = "Untitled-"
        for _ = 1, 4 do
          filename = filename .. string.char(math.random(65, 90))
        end
      end
      return filename
    end,

    -- Frontmatter
    -- `true` indicates that you don't want obsidian.nvim to manage frontmatter.
    disable_frontmatter = true,

    -- Configure syntax highlighting
    -- I am disabling this for now, since it requires `conceallevel` set to 1 or
    -- 2. I have it at 0 since I want to see straight markdown in vim, at least
    --    for now.
    --
    -- See the obsidian.nvim docs for additional settings if I end up enabling
    -- this -- you can control checkbox display, which syntax highlight groups
    -- get assigned, etc.
    ui = {
      enable = false,
    },

    -- Keymappings
    -- Disable here and set in .config/nvim/lua/config/keymaps.lua for
    -- convenience bc likely to just need to map key combo to existing command.
    -- But see obsidian.nvim docs; can define keymaps that are functions here
    -- if needed
    mappings = {},

    -- Attachments
    attachments = {
      img_folder = "Utilities/Attachments",
    },
  },
}

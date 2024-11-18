--
-- neo-tree docs: https://github.com/nvim-neo-tree/neo-tree.nvim
-- lazyvim default config: https://www.lazyvim.org/plugins/editor#neo-treenvim
--

return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "s1n7ax/nvim-window-picker",
  },
  opts = {
    filesystem = {
      bind_to_cwd = true,
      close_if_last_window = true,
      window = {
        mappings = {
          -- TODO: This appears to only set for the filesystem source;
          -- originals remain for buffers and git_status
          ["o"] = "open",
          ["l"] = "none",
          ["v"] = "open_vsplit",
          ["h"] = "open_split",
          ["s"] = "none",
          ["sc"] = "order_by_created",
          ["sd"] = "order_by_diagnostics",
          ["sg"] = "order_by_git_status",
          ["sm"] = "order_by_modified",
          ["sn"] = "order_by_name",
          ["ss"] = "order_by_size",
          ["st"] = "order_by_type",
          ["oc"] = "none",
          ["od"] = "none",
          ["og"] = "none",
          ["om"] = "none",
          ["on"] = "none",
          ["os"] = "none",
          ["ot"] = "none",
          ["P"] = { "toggle_preview", config = { use_float = true } },
        },
      },
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          -- '.git',
          -- '.DS_Store',
          -- 'thumbs.db',
        },
        never_show = {},
      },
    },
  },
}

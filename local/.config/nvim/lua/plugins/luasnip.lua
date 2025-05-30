--
-- LuaSnip (https://github.com/L3MON4D3/LuaSnip)
--
-- LuaSnip is an engine only; snippets need to be provided.
-- They can be created manually in the snippets directory below. Some helpful
-- ones are also provided by friendly-snippets -- see
-- https://github.com/rafamadriz/friendly-snippets/tree/main/snippets
--

return {
  "L3MON4D3/LuaSnip",
  lazy = true,
  dependencies = {
    {
      "rafamadriz/friendly-snippets",
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
        require("luasnip.loaders.from_vscode").lazy_load({ paths = { vim.fn.stdpath("config") .. "/snippets" } })
      end,
    },
  },
  opts = {
    history = true,
    delete_check_events = "TextChanged",
  },
  config = function()
    require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets/" })
  end,
}

return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      keywords = {
        TODO = { icon = "✱" },
        NOTE = { icon = "i" },
        WARN = {
          alt = { "WARNING" }
        },
        FIX = {
          alt = { "FIXME", "BUG", "FIXIT", "ISSUE", "XXX" },
        },
      },
      colors = {
        hint = { "Label" },
      },
    }
  }
}
-- TODO: test
-- HACK: test
-- WARN: test
-- NOTE: test
-- XXX: test
-- FIX: test

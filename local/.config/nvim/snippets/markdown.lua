local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {
  -- s(
  --   "eg",
  --   fmt("just an {iNode1}", {
  --     iNode1 = i(1, "example"),
  --   })
  -- ),
  -- s(
  --   "eg2",
  --   fmt(
  --     [[
  --     if {} then
  --       {}
  --     end
  --     ]],
  --     {
  --       -- i(1) is at nodes[1], i(2) at nodes[2].
  --       i(1, "not now"),
  --       i(2, "when"),
  --     }
  --   )
  -- ),
  s(
    "blog",
    fmt(
      [[
      ---
      title: {}
      draft: true
      tags:
      - {}
      ---

      {}
      ]],
      {
        i(1, ""),
        i(2, ""),
        i(3, ""),
      }
    )
  ),
  s(
    "pico",
    fmt(
      [[
      ---
      slug: {}
      tags:
      - picoblog
      ---

      {}
      ]],
      {
        i(1, ""),
        i(2, ""),
      }
    )
  ),
}

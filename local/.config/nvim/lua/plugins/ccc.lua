-- https://github.com/uga-rosa/ccc.nvim/blob/main/doc/ccc.txt

return {
  "uga-rosa/ccc.nvim",
  config = function()
    local ccc = require("ccc")
    ccc.setup({
      highlighter = {
        auto_enable = true,
        lsp = true,
      },
      highlight_mode = "virtual", -- "fg" | "bg" | "virtual"
      virtual_symbol = "● ",
      inputs = {
        ccc.input.hsl,
        ccc.input.rgb,
        ccc.input.cmyk,
      },
      convert = {
        { ccc.picker.hex, ccc.output.css_hsl },
        { ccc.picker.css_rgb, ccc.output.css_hsl },
        { ccc.picker.css_hsl, ccc.output.hex },
      },
      recognize = {
        input = true,
        output = true,
        pattern = {
          [ccc.picker.css_rgb] = { ccc.input.rgb, ccc.output.css_rgb },
          [ccc.picker.css_name] = { ccc.input.hsl, ccc.output.css_hsl },
          [ccc.picker.hex] = { ccc.input.hsl, ccc.output.hex },
          [ccc.picker.css_hsl] = { ccc.input.hsl, ccc.output.css_hsl },
          [ccc.picker.css_hwb] = { ccc.input.hwb, ccc.output.css_hwb },
          [ccc.picker.css_lab] = { ccc.input.lab, ccc.output.css_lab },
          [ccc.picker.css_lch] = { ccc.input.lch, ccc.output.css_lch },
          [ccc.picker.css_oklab] = { ccc.input.oklab, ccc.output.css_oklab },
          [ccc.picker.css_oklch] = { ccc.input.oklch, ccc.output.css_oklch },
        },
      },
    })
  end,
}

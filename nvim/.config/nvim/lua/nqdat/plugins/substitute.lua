return {
  "gbprod/substitute.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local substitute = require("substitute")

    substitute.setup()

    local keymap = vim.keymap

    keymap.set("n", "s", substitute.operator, { desc = "Subsitute with motion" })
    keymap.set("n", "ss", substitute.line, { desc = "Subsitute line" })
    keymap.set("n", "S", substitute.eol, { desc = "Subsitute to end of line" })
    keymap.set("x", "s", substitute.visual, { desc = "Subsitute in visual mode" })

  end
}

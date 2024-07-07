return {
  "f-person/git-blame.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local gitblame = require("gitblame")
    gitblame.setup({
      enabled = true,
      date_format = "%r",
    })
  end,
}

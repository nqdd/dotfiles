return {
  "sindrets/diffview.nvim",
  version = "*",
  config = function()
    require("diffview").setup()

    local keymap = vim.keymap

    keymap.set("n", "<leader>gm", "<cmd>DiffviewOpen<CR>", { desc = "Open merge tool" })
    keymap.set("n", "<leader>gh", "<cmd>DiffviewFileHistory<CR>", { desc = "View file history" })
    keymap.set("n", "<leader>gx", "<cmd>:tabclose<CR>", { desc = "Close git tools" })
  end,
}

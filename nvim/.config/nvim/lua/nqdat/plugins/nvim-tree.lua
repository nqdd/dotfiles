return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    -- disable netrw
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- optionally enable 24-bit colour
    vim.opt.termguicolors = true

    require("nvim-tree").setup({
      view = {
        width = 40,
        relativenumber = true
      },
      renderer = {
        indent_markers = {
          enable = true
        }
      },
      -- disable window picker for explorer to work well with window splits
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          }
        },
      },
      filters = {
        custom = { ".DS_Store" },
      },
      git = {
        ignore = false,
      },
    }) 
  end,
}

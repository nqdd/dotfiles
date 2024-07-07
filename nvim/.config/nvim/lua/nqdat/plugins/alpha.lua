return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    local logo = {
      " ██╗  ██╗ █████╗ ██████╗ ███████╗ █████╗ ███╗   ███╗██╗ ",
      " ██║ ██╔╝██╔══██╗██╔══██╗██╔════╝██╔══██╗████╗ ████║██║ ",
      " █████╔╝ ███████║██████╔╝███████╗███████║██╔████╔██║██║ ",
      " ██╔═██╗ ██╔══██║██╔══██╗╚════██║██╔══██║██║╚██╔╝██║██║ ",
      " ██║  ██╗██║  ██║██║  ██║███████║██║  ██║██║ ╚═╝ ██║██║ ",
      " ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝ ",
    }

    local function footer()
      local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
      local version = vim.version()
      local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch

      return datetime .. nvim_version_info
    end

    dashboard.section.header.val = logo
    dashboard.section.buttons.val = {
      dashboard.button("e", " > New File", "<cmd>ene<CR>"),
      dashboard.button("<space>ee", " > File explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("<space>ff", " > Find files", "<cmd>Telescope find_files<CR>"),
      dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
    }

    dashboard.section.footer.val = footer()
    dashboard.section.footer.opts.hl = "Constant"

    alpha.setup(dashboard.opts)

    -- disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}

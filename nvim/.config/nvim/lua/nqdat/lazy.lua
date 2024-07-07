local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.loop).fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath
  })
end

vim.opt.rtp:prepend(lazypath)

local com = {
  { import = "nqdat.plugins" },
  { import = "nqdat.plugins.lsp" }
}

require("lazy").setup(com, {
  change_detection = {
    notify = false,
  },
})

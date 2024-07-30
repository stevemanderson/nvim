local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    { import = "plugins" },
    { import = "plugins.lsp" }
  },
  install = { colorschema = { "habamax" } },
  change_detection = {
    notify = false,
  },
  checker = {
    enabled = true,
    notify = false,
  }
})

--require("plugins/coc")
--require("plugins/telescope")
--require("plugins/fzf_lua")
--require("plugins/nerdtree")
--require("plugins/neogit")
--require("plugins/nvim_dap")
--require("plugins/lualine")

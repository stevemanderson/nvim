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
    {
        "nvim-telescope/telescope.nvim", tag = "0.1.6",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
	{"neoclide/coc.nvim", branch = "release"},
	"preservim/nerdtree",
	{
		"ibhagwan/fzf-lua", 
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("fzf-lua").setup({})
		end
	},
	"rebelot/kanagawa.nvim",
    "prettier/vim-prettier"
})

require("plugins/coc")
require("plugins/telescope")
require("plugins/fzf_lua")
require("plugins/nerdtree")

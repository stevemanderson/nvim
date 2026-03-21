return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle file tree" },
    { "<leader>rf", "<cmd>NvimTreeFindFile<cr>", desc = "Find file in tree" },
  },
  config = function()
    require("nvim-tree").setup({
      view = { width = 35 },
      renderer = { group_empty = true },
      filters = { dotfiles = false },
    })
  end,
}

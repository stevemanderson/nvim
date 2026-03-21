return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "ibhagwan/fzf-lua",
  },
  keys = {
    { "<leader>gg", "<cmd>Neogit<cr>", desc = "Neogit" },
  },
  config = function()
    require('neogit').setup {}
  end
}

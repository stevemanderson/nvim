return {
	"preservim/nerdtree",
  config = function()
    local keyset = vim.keymap.set
    keyset("n", "<leader>rf", "<cmd>:NERDTreeFind<cr>", { silent = true })
  end
}


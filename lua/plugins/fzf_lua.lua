vim.keymap.set("n", "<c-P>", "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
vim.keymap.set("n", ";", "<cmd>lua require('fzf-lua').buffers()<CR>", { silent = true })

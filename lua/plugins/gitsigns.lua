return {
  "lewis6991/gitsigns.nvim",
  event = "BufReadPre",
  opts = {
    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns
      local opts = { buffer = bufnr }

      vim.keymap.set('n', ']h', gs.next_hunk, vim.tbl_extend('force', opts, { desc = "Next hunk" }))
      vim.keymap.set('n', '[h', gs.prev_hunk, vim.tbl_extend('force', opts, { desc = "Prev hunk" }))
      vim.keymap.set('n', '<leader>hs', gs.stage_hunk, vim.tbl_extend('force', opts, { desc = "Stage hunk" }))
      vim.keymap.set('n', '<leader>hr', gs.reset_hunk, vim.tbl_extend('force', opts, { desc = "Reset hunk" }))
      vim.keymap.set('n', '<leader>hp', gs.preview_hunk, vim.tbl_extend('force', opts, { desc = "Preview hunk" }))
      vim.keymap.set('n', '<leader>hb', function() gs.blame_line({ full = true }) end, vim.tbl_extend('force', opts, { desc = "Blame line" }))
    end,
  },
}

return {
  'ThePrimeagen/git-worktree.nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim',
  },
  config = function()
    require('git-worktree').setup()
    require('telescope').load_extension 'git_worktree'

    vim.keymap.set('n', '<leader>sb', "<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>", { desc = '[S]earch Worktree [B]ranch' })
    vim.keymap.set(
      'n',
      '<leader>sB',
      "<CMD>lua requrie('telescope').extensions.git_worktree.create_git_worktree()<CR>",
      { desc = 'Create New Worktree [B]ranch' }
    )
  end,
}

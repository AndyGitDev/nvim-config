return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration

    -- Only one of these is needed.
    'nvim-telescope/telescope.nvim', -- optional
    'ibhagwan/fzf-lua', -- optional
    'echasnovski/mini.pick', -- optional
  },
  config = function()
    vim.keymap.set('n', '<leader>gs', '<cmd>Neogit kind=floating<cr>', { desc = '[G]it [S]tatus' })
    vim.keymap.set('n', '<leader>gp', '<cmd>Neogit pull<cr>', { desc = '[G]it [P]ull' })
  end,
}

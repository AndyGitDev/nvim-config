return {
  'linux-cultist/venv-selector.nvim',
  dependencies = { 'neovim/nvim-lspconfig', 'nvim-telescope/telescope.nvim', 'mfussenegger/nvim-dap-python' },
  config = function()
    require('venv-selector').setup {
      -- Your options go here
      name = 'venv',
      auto_refresh = false,
      parents = 1,
      stay_on_this_version = true,
    }

    vim.keymap.set('n', '<leader>vs', '<cmd>VenvSelect<cr>', { desc = '[V]irtualenv [S]elect' })
  end,
  event = 'VeryLazy', -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
}

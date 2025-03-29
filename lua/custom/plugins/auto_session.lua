return {
  'rmagatti/auto-session',

  config = function()
    local auto_session = require 'auto-session'

    auto_session.setup {
      auto_restore_enabled = false,
      auto_session_suppress_dirs = { '~/' },
    }

    vim.keymap.set('n', '<leader>ws', '<cmd>SessionSave<cr>', { desc = '[W]orkspace [S]ave' })
    vim.keymap.set('n', '<leader>wr', '<cmd>SessionRestore<cr>', { desc = '[W]orkspace [R]estore' })
  end,
}

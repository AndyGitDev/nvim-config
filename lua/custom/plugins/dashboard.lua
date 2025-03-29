return {
  {
    'goolord/alpha-nvim',
    config = function()
      local alpha = require 'alpha'
      local dashboard = require 'alpha.themes.dashboard'
      dashboard.section.header.val = {
        '',
        '',
        '',
        '',
        '',
        '  ⟋|､',
        ' (°､ ｡ 7',
        ' |､  ~ヽ',
        ' じしf_,)〳',
      }
      dashboard.section.buttons.val = {
        dashboard.button('e', '  new file', ':ene <bar> startinsert <cr>'),
        dashboard.button('r', '↻  restore session', ':SessionRestore <cr>'),
        dashboard.button('q', '󰅚  quit nvim', ':qa<cr>'),
      }
      local handle = io.popen 'fortune'
      local fortune = handle:read '*a'
      handle:close()
      dashboard.section.footer.val = fortune

      dashboard.section.header.opts.hl = 'Include'

      dashboard.config.opts.noautocmd = true

      vim.cmd [[autocmd user alphaready echo 'ready']]

      alpha.setup(dashboard.config)
    end,
  },
}

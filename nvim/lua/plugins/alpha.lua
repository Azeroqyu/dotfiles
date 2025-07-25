return {
  'goolord/alpha-nvim',
  event = 'VimEnter',
  dependencies = {
    'nhattVim/alpha-ascii.nvim',
    opts = {
      header = 'test',
      use_default = false,
      user_path = vim.fn.expand '~/.config/nvim/assets',
    },
  },
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    dashboard.section.buttons.val = {
      dashboard.button('b', 'λ  > Browse files', ':Oil<CR>'),
      dashboard.button('z', 'λ  > Browse Directories', ':Telescope zoxide list<CR>'),
      dashboard.button('f', 'λ  > Find file', ':Telescope find_files<CR>'),
      dashboard.button('r', 'λ  > Recent', ':Telescope oldfiles<CR>'),
      dashboard.button('n', '  Change header image', ':AlphaAsciiNext<CR>'),
    }

    vim.api.nvim_create_autocmd('User', {
      once = true,
      pattern = 'LazyVimStarted',
      callback = function()
        local stats = require('lazy').stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        dashboard.section.footer.val = {
          ' ',
          ' Loaded ' .. stats.loaded .. '/' .. stats.count .. ' plugins  in ' .. ms .. ' ms ',
        }
        pcall(vim.cmd.AlphaRedraw)
      end,
    })

    alpha.setup(dashboard.opts)
  end,
}

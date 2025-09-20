vim.opt.clipboard = 'unnamedplus'

--Nerd font
vim.g.have_nerd_font = true

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- mouse support to al modes
vim.opt.mouse = 'a'

-- dont show the mode, thats what the status bar is for
vim.opt.showmode = false

vim.opt.termguicolors = true

-- break indent
vim.opt.breakindent = true

-- save undo history
vim.opt_local.undofile = true

-- configuring some ui stuff
ui = {
  icons = vim.g.have_nerd_font and {} or {
    cmd = '⌘',
    config = '🛠',
    event = '📅',
    ft = '📂',
    init = '⚙',
    keys = '🗝',
    plugin = '🔌',
    runtime = '💻',
    require = '🌙',
    source = '📄',
    start = '🚀',
    task = '📌',
    lazy = '💤 ',
  },
}

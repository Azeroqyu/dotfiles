--Nerd font
vim.g.have_nerd_font = true
-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
-- dont show the mode, thats what the status bar is for
vim.opt.showmode = false
--Sync clipboard between OS and nvim
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

vim.o.termguicolors = true

-- break indent
vim.opt.breakindent = true

-- save undo history
vim.opt.undofile = true

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

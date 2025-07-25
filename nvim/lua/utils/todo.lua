local M = {}

local function expand_path(path)
  if path:sub(1, 1) == '~' then
    return os.getenv 'HOME' .. path:sub(2)
  end
  return path
end

local function open_float_file(file_path)
  local expanded_path = expand_path(file_path)

  if vim.fn.filereadable(expanded_path) == 0 then
    vim.notify('todo file does not exist at: ' .. expanded_path, vim.log.levels.ERROR)
    return
  end

  local function centering(outer, inner)
    return (outer - inner) / 2
  end

  local function win_config()
    local width = math.min(math.floor(vim.o.columns * 0.75), 60)
    local height = math.floor(vim.o.lines * 0.75)

    return {
      relative = 'editor',
      width = width,
      height = height,
      col = centering(vim.o.columns, width),
      row = centering(vim.o.lines, height),
      border = 'single',
      style = 'minimal',
    }
  end

  local buff = vim.fn.bufnr(expanded_path, true)

  if buff == -1 then
    buff = vim.api.nvim_create_buff(false, false)
    vim.api.nvim_buff_set_name(buff, expanded_path)
  end

  vim.bo[buff].swapfile = false
  local win = vim.api.nvim_open_win(buff, true, win_config())

  vim.api.nvim_buf_set_keymap(buff, 'n', 'q', '', {
    noremap = true,
    silent = true,
    callback = function()
      if vim.api.nvim_get_option_value('modified', { buf = buff }) then
        vim.notify('save your changes!', vim.log.levels.WARN)
      else
        vim.api.nvim_win_close(0, true)
      end
    end,
  })
end

local function setup_user_cmds(opts)
  opts = opts or {}
  local file_path = opts.todo or '~/notes/todo/todo.md'
  vim.api.nvim_create_user_command('Td', function()
    open_float_file(file_path)
  end, {})
end

local function setup_keymaps()
  vim.keymap.set('n', '<leader>td', ':Td<CR>', { silent = true })
end

M.setup = function(opts)
  setup_user_cmds(opts)
  setup_keymaps()
end

return M

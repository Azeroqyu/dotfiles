return {
  {
    'catppuccin/nvim',
    config = function()
      require('catppuccin').setup {
        color_overrides = {
          mocha = {
            base = '#0d0d14',
            mantle = '#0d0d14',
            crust = '#401019',
            blue = '#f5e0dc',
          },
        },
      }
    end,
  },
  {
    'vague2k/vague.nvim',
    config = function()
      require('vague').setup {
        -- optional configuration here
        transparent = false,
        style = {
          -- "none" is the same thing as default. But "italic" and "bold" are also valid options
          boolean = 'none',
          number = 'none',
          float = 'none',
          error = 'none',
          comments = 'none',
          conditionals = 'none',
          functions = 'none',
          headings = 'bold',
          operators = 'none',
          strings = 'none',
          variables = 'none',

          -- keywords
          keywords = 'none',
          keyword_return = 'none',
          keywords_loop = 'none',
          keywords_label = 'none',
          keywords_exception = 'none',

          -- builtin
          builtin_constants = 'none',
          builtin_functions = 'none',
          builtin_types = 'none',
          builtin_variables = 'none',
        },
        colors = {
          bg = '#0d0d14',
          inactiveBg = '#1c1c24',
          fg = '#cdcdcd',
          floatBorder = '#878787',
          line = '#252530',
          comment = '#606079',
          builtin = '#b4d4cf',
          func = '#c48282',
          string = '#e8b589',
          number = '#e0a363',
          property = '#c3c3d5',
          constant = '#aeaed1',
          parameter = '#bb9dbd',
          visual = '#333738',
          error = '#d8647e',
          warning = '#f3be7c',
          hint = '#7e98e8',
          operator = '#90a0b5',
          keyword = '#6e94b2',
          type = '#9bb4bc',
          search = '#405065',
          plus = '#7fa563',
          delta = '#f3be7c',
        },
      }
    end,
  },
}

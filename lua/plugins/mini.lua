local hipatterns_setup = {
  highlighters = {
    -- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
    fixme     = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
    hack      = { pattern = '%f[%w]()HACK()%f[%W]', group = 'MiniHipatternsHack' },
    todo      = { pattern = '%f[%w]()TODO()%f[%W]', group = 'MiniHipatternsTodo' },
    note      = { pattern = '%f[%w]()NOTE()%f[%W]', group = 'MiniHipatternsNote' },

    -- Highlight hex color strings (`#rrggbb`) using that color
    hex_color = require('mini.hipatterns').gen_highlighter.hex_color(),
  },
}

return ({
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require("mini.statusline").setup()
    require("mini.indentscope").setup()
    require("mini.cursorword").setup()
    require("mini.surround").setup({
      highlight_duration = 1000
    })
    require("mini.ai").setup()
    require("mini.pairs").setup()
    require('mini.hipatterns').setup(hipatterns_setup)
    require("mini.align").setup()
  end
})

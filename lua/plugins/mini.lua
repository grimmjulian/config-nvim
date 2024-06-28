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
  end
})

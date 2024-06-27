return ({
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require("mini.statusline").setup()
    require("mini.indentscope").setup()
    require("mini.cursorword").setup()
    require("mini.surround").setup()
    require("mini.ai").setup()
    require("mini.pairs").setup()
  end
})

local ls = require("luasnip")

local jump_forward = function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end

local jump_backward = function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end

local change_choice = function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end

return ({
  "L3MON4D3/LuaSnip",
  -- follow latest release.
  version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
  -- install jsregexp (optional!).
  build = "make install_jsregexp",
  dependencies = { "rafamadriz/friendly-snippets" },
  keys = {
    { "<c-n>", jump_forward,  mode = { "i", "s" }, desc = "Snippet jump forward" },
    { "<c-p>", jump_backward, mode = { "i", "s" }, desc = "Snippet jump backward" },
    { "<c-l>", change_choice, mode = { "i", "s" }, desc = "Snippet change choice" },
  }
})

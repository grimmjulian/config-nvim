return ({ {
  'stevearc/oil.nvim',
  opts = {
    view_options = {
      show_hidden = true,
      is_always_hidden = function(name, _)
        return name == ".." or name == ".git"
      end,
      delete_to_trash = true,
      skip_confirm_for_simple_edits = true },
    win_options = {
      signcolumn = "yes:2",
    },
  },
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
},
  {
    "refractalize/oil-git-status.nvim",

    dependencies = {
      "stevearc/oil.nvim",
    },

    config = true,
  }, })

return ({
  'stevearc/oil.nvim',
  opts = {
    view_options = {
      show_hidden = true,
      is_always_hidden = function(name, _)
        return name == ".." or name == ".git"
      end,
      delete_to_trash = true,
      skip_confirm_for_simple_edits = true }
  },
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
})

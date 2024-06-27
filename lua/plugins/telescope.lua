local builtin = require("telescope.builtin")

return{
  {
    "nvim-telescope/telescope.nvim",
    tag = '0.1.5',
    opts = { extensions_list = { "fzf"  } },
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    keys = {
      {"<leader>ff", builtin.find_files, desc = "Find in file names in dir"},
      {'<leader>fg', builtin.live_grep, desc = "Find in files in dir"},
      {'<leader>fb', builtin.buffers, desc = "Find in buffers"},
      {'<leader>fh', builtin.help_tags, desc = "Find in help tags"},
    }
  }
}


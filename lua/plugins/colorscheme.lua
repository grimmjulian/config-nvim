return ({
  -- {
  --   'edeneast/nightfox.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd.colorscheme('carbonfox')
  --   end
  -- },
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  --   config = function()
  --     vim.cmd.colorscheme('tokyonight-night')
  --   end
  -- },
  -- { "ellisonleao/gruvbox.nvim",
  --   priority = 1000,
  --   config = function()
  --     vim.opt.background = "dark"
  --     vim.cmd.colorscheme('gruvbox')
  --   end
  -- },
  -- { 'kepano/flexoki-neovim', name = 'flexoki',
  --   config = function()
  --     vim.cmd.colorscheme('flexoki-dark')
  --   end
  -- },
  -- { 'jacoborus/tender.vim',
  --   config = function()
  --     vim.cmd.colorscheme('tender')
  --   end
  -- },
  { "nyoom-engineering/oxocarbon.nvim",
    priority = 1000,
    config = function()
      vim.opt.background = "dark"
      vim.cmd.colorscheme('oxocarbon')
    end
  },
})

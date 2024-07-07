return ({
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
    -- MarkdownPreview
    -- MarkdownPreviewStop
    -- MarkdownPreviewToggle

  },
  {
    "OXY2DEV/markview.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- Used by the code bloxks
      "nvim-treesitter/nvim-treesitter"
    },

    config = function()
      require("markview").setup();
    end
  },
  {
    'quarto-dev/quarto-nvim',
    dependencies = { 'jmbuhr/otter.nvim' },
  },
})

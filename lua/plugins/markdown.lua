return ({
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
    -- MarkdownPreview
    -- MarkdownPreviewStop
    -- MarkdownPreviewToggle
    keys = {
      { "<leader><leader>p", vim.cmd.MarkdownPreview, desc = "Toggle Markdown Preview" },
    },
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
    "bullets-vim/bullets.vim",
    ft = { "markdown", "rmarkdown", "quarto" }
  },
  {
    'quarto-dev/quarto-nvim',
    dependencies = { 'jmbuhr/otter.nvim' },
    ft = { "quarto" },
    keys = {
      { "<leader><leader>p", vim.cmd.QuartoPreview, desc = "Toggle Quarto Preview" },
    },
  },
})

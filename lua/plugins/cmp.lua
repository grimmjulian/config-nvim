return ({ {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-buffer",
    -- cmp-path starts completing after . or ~
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp"
  },
  config = function()
    local cmp = require("cmp")
    local cmp_select = { behavior = cmp.SelectBehavior.Select }
    require("cmp_r").setup({})
    cmp.setup({
      snippet = {
        expand = function(args)
          vim.snippet.expand(args.body)
        end
      },
      sources = ({
        { name = "nvim_lsp" },
        { name = "cmp_r" },
        { name = "buffer",  keyword_length = 3 },
        { name = "path" }
      }),
      mapping = cmp.mapping.preset.insert({
        -- confirm completion item
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        -- trigger completion menu
        ["<C-Space>"] = cmp.mapping.complete(),
        ['<C-c>'] = cmp.mapping.abort(),
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
      }),
      experimental = {
        ghost_text = true,
      }
    })
  end
} })

return({{
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-buffer",
    -- cmp-path starts completing after . or ~
    "hrsh7th/cmp-path",
  },
  config = function() 
    local cmp = require("cmp")
    local cmp_select = {behavior = cmp.SelectBehavior.Select}
    cmp.setup({
      snippet = {
        expand = function(args)
          vim.snippet.expand(args.body)
        end
      },
      sources = ({
        {name = "buffer"},
        {name = "path"}
      }),
      mapping = cmp.mapping.preset.insert({
        ['<C-c>'] = cmp.mapping.abort(),
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
      })
    })
  end
}})

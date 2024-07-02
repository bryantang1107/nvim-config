return {
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local config = require("cmp")
      require("luasnip.loaders.from_vscode").lazy_load()
      local opts = {
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
          end,
        },
        window = {
          completion = config.config.window.bordered(),
          documentation = config.config.window.bordered(),
        },
        mapping = config.mapping.preset.insert({
          ["<C-b>"] = config.mapping.scroll_docs(-4),
          ["<C-f>"] = config.mapping.scroll_docs(4),
          ["<C-Space>"] = config.mapping.complete(),
          ["<C-e>"] = config.mapping.abort(),
          ["<CR>"] = config.mapping.confirm({ select = true }),
        }),
        sources = config.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
        }, {
          { name = "buffer" },
        }),
        dependencies = {
          { "roobert/tailwindcss-colorizer-cmp.nvim", config = true }
        },
        opts = function(_, opts)
          opts.formatting = {
            format = require("tailwindcss-colorizer-cmp").formatter,
          }
        end
      }
      config.setup(opts)
    end,
  },
}

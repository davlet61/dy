return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = { "HiPhish/nvim-ts-rainbow2"},
  opts = function(_, opts)
    local rainbow = require "ts-rainbow"
    -- Automatically install missing parsers when entering buffer
    opts.auto_install = true
    opts.ensure_installed = {
      'typescript',
      'graphql',
      'lua',
      'json',
      'http',
    }
    opts.config = require("nvim-treesitter.configs").setup({
      autotag = {
        enable = true,
       },  
      rainbow = {
        enable = true,
        query = {
          'rainbow-parens',
          html = 'rainbow-tags',
          javascript = 'rainbow-parens-react',
          tsx = 'rainbow-tags'
        },
        -- list of languages you want to disable the plugin for
        disable = { 'cpp' },
        -- Which query to use for finding delimiters
        query = 'rainbow-parens',
        -- Highlight the entire buffer all at once
        strategy = rainbow.strategy.global,
      }
    })
    return opts
  end,
}


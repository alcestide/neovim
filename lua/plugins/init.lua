return {
  { import = "plugins.modules" },

{
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp', -- Connection to your LSP
    'hrsh7th/cmp-buffer',   -- Completion for words in current file
    'hrsh7th/cmp-path',     -- Completion for file paths
    'L3MON4D3/LuaSnip',     -- Required for snippets
    'saadparwaiz1/cmp_luasnip',
  },
  config = function()
    local cmp = require('cmp')
    cmp.setup({
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(), -- Manually trigger
        ['<C-e>'] = cmp.mapping.abort(),        -- Close menu
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path' },
      })
    })
  end
},

{
  "L3MON4D3/LuaSnip",
  event = "InsertEnter",
  config = function()
    local ls = require("luasnip")

    require("luasnip.loaders.from_lua").lazy_load({
      paths = { vim.fn.stdpath("config") .. "/lua/snippets" },
    })

    ls.config.set_config({
      history = true,
      updateevents = "TextChanged,TextChangedI",
    })
  end,
},


{
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {}
},
{
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional - Diff integration

    -- Only one of these is needed.
    "nvim-telescope/telescope.nvim", -- optional
   -- "ibhagwan/fzf-lua",              -- optional
   -- "echasnovski/mini.pick",         -- optional
   -- "folke/snacks.nvim",             -- optional
 },
},

{
  "vague2k/vague.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other plugins
  config = function()
    -- NOTE: you do not need to call setup if you don't want to.
    require("vague").setup({
      -- optional configuration here
    })
    --vim.cmd("colorscheme vague")
  end
},

{
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
},

{
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
},

{
    'nvim-pack/nvim-spectre',
    --"nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },},
{
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
},

  {"MunifTanjim/nui.nvim",},

	{
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("configs.treesitter")
  end
},

    {
    	'nvim-telescope/telescope.nvim',
      	dependencies = { 'nvim-lua/plenary.nvim' }
    },


    {   "mbbill/undotree"   },

    {
  "karb94/neoscroll.nvim",
  opts = {
  },
},

{
    'nvim-lualine/lualine.nvim',
    config = function()
        require('lualine').setup()
    end,
    dependencies = { 'nvim-tree/nvim-web-devicons' }
},

{'ThePrimeagen/harpoon',
    dependencies={'nvim-lua/plenary.nvim'},
    branch = "harpoon2"
},


{
  "declancm/cinnamon.nvim",
  version = "*", -- use latest release
  opts = {
    -- change default options here
  },
},



}

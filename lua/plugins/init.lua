return {
  -- You can include other plugin specs directly here.
  { import = "plugins.modules" },


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
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
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

{
    'rcarriga/nvim-notify',
    lazy = false,
    config = function ()
      require("notify").setup {
        stages = "fade_in_slide_out",
        timeout = 1000,
        fps = 144,
      }
      vim.notify = require('notify')
    end
  },
  {"MunifTanjim/nui.nvim",},
{
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  },

	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate"
	},

    {
    	'nvim-telescope/telescope.nvim',
    	tag = '0.1.2',
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
    dependencies={'nvim-lua/plenary.nvim'}
},


{
  "declancm/cinnamon.nvim",
  version = "*", -- use latest release
  opts = {
    -- change default options here
  },
},



}

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

  {"MunifTanjim/nui.nvim",},

	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate"
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

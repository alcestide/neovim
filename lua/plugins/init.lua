return {
  -- You can include other plugin specs directly here.
  { import = "plugins.modules" },

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

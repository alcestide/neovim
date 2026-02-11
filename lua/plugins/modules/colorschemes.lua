return{
    {
    "rose-pine/neovim",
	name = "rose-pine",
	config = function()
		--vim.cmd("colorscheme rose-pine")
	end
},


{
  "nyoom-engineering/oxocarbon.nvim"
  -- Add in any other configuration; 
  --   event = foo, 
  --   config = bar
  --   end,
},

{
  "thesimonho/kanagawa-paper.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
},

{ "catppuccin/nvim",
--lazy = true,
name = "catppuccin",
priority = 1,
opts = {
    color_overrides = {
		mocha = {
			    base = "#0a0910",
                mantle = "#0a0910",
                crust = "#0a0910",
                },
			},
        style = "catppuccin-mocha",
        },
    },
}


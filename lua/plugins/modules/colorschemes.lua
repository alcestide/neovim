return{{
    "rose-pine/neovim",
	name = "rose-pine",
	config = function()
		vim.cmd("colorscheme rose-pine")
	end
},

{
  "nyoom-engineering/oxocarbon.nvim"
  -- Add in any other configuration; 
  --   event = foo, 
  --   config = bar
  --   end,
},

{ "catppuccin/nvim",
--lazy = true,
name = "catppuccin",
priority = 1,
opts = {
    color_overrides = {
		--mocha = {
			    --base = "#000000",
				--mantle = "#000000",
				--crust = "#000000",
                --},
			},
        style = "catppuccin-mocha",
        },
    },
}


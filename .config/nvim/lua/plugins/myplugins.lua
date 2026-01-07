-- Example config with explanations: https://lazy.folke.io/spec/examples

return {
	{
		"aliqyan-21/darkvoid.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("darkvoid").setup({
				transparent = true,
				glow = false,
				colors = {
					plugins = {
						lualine = false,
					},
				},
			})
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "darkvoid",
		},
	},
	{
		"ggandor/leap.nvim",
	},
	{
		"folke/twilight.nvim",
	},
}

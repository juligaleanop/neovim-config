return {
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("nightfox").setup({
				palettes = { carbonfox = { bg1 = "#101010" } },
			})
		end,
	},
	{
		"bluz71/vim-moonfly-colors",
		name = "moonfly",
		lazy = false,
		priority = 1000,
	},
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000,
		lazy = false,
	},
}

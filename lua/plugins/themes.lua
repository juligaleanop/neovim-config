return {
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("nightfox").setup({
				palettes = { carbonfox = { bg1 = "#101010",} },
			})
		end,
	},
}

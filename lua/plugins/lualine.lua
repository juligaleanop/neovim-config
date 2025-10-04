return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	priority = 900,
	config = function()
		require("lualine").setup({
			options = {
				theme = "auto",
				component_separators = "|",
			},
		})
	end,
}

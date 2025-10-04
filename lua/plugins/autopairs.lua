return {
	"windwp/nvim-autopairs",
	opts = {
		map_bs = false,
		check_ts = true,
		ts_config = {},
	},
	config = function()
		require("nvim-autopairs").setup(opts)
	end,
}

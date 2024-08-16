return {
	'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {
		map_bs = false,
		check_ts = true,
		ts_config = {}
	},
	config = function()
		return require("nvim-autopairs").setup(opts)
	end,
}

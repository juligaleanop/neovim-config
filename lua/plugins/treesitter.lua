return {
	"nvim-treesitter/nvim-treesitter",
	opts = {
		highlight = { enable = true },
		ensure_installed = {
			"vim",
			"lua",
			"c",	
			"cpp",
			"python",
			"javascript",
		},
		sync_install = true,
		auto_install = true, 
	},
}


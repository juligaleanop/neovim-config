return {
  	'stevearc/oil.nvim',
  	---@module 'oil'
  	---@type oil.SetupOpts
  	opts = {},
  	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup({
			default_file_explorer = true,
			show_hidden = false,
			columns = {
    			"icon",
    			"size",
    			"mtime",
  			},
		})
		vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })
	end
}

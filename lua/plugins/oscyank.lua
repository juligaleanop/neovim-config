return {
	"ojroques/vim-oscyank",
	branch = "main",
	keys = { { "<C-c>", ":OSCYankVisual<CR>", desc = "Copy to clipboard", mode = "v" } },
	init = function()
		vim.g.oscyank_term = "default"
	end,
}

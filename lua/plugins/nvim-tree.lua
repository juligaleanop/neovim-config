return {
  	"nvim-tree/nvim-tree.lua",
  	version = "*",
  	lazy = false,
  	dependencies = {
    		"nvim-tree/nvim-web-devicons",
  	},
	opts = function()

		local view = { width = 30 }
		
		local swap_then_open_tab = function()
			local api = require("nvim-tree.api")
			local node = api.tree.get_node_under_cursor()
			vim.cmd("wincmd l")
			api.node.open.tab(node)
		end

		local api = require("nvim-tree.api")

		-- custom mappings
		vim.keymap.set('n', '<leader>ee', ":NvimTreeToggle<CR>", {})
		vim.keymap.set('n', '<leader>ef', api.tree.focus, {})
		vim.keymap.set('n', '<leader>em', api.fs.create, {})
		vim.keymap.set('n', '<leader>e<CR>', api.node.open.tab_drop, {})
		vim.keymap.set('n', '<leader>er', api.fs.rename_basename, {})		
		vim.keymap.set('n', '<leader>ex', api.fs.copy.absolute_path, {})		
		vim.keymap.set('n', '<leader>ec', api.fs.cut, {})
		vim.keymap.set('n', '<leader>ev', api.fs.paste, {})
		vim.keymap.set('n', '<leader>eh', api.tree.toggle_help, {})
	end,
	config = function()
		require("nvim-tree").setup {opts}
	end,
}





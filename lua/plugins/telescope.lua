return {
	'nvim-telescope/telescope.nvim',
	dependencies = { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep', 'nvim-treesitter/nvim-treesitter' },
	opts = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, {noremap = true}) -- en caso de querer buscar dotfiles usar la linea de abajo en lugar de esta
		--vim.keymap.set('n', '<leader>ff', "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>", {noremap = true})
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, {noremap = true})
		vim.keymap.set('n', '<leader>fb', builtin.buffers, {noremap = true})
		vim.keymap.set('n', '<leader>ft', builtin.treesitter, {noremap = true})
		vim.keymap.set('n', '<leader>fs', builtin.git_status, {noremap = true})
		vim.keymap.set('n', '<leader>fd', builtin.diagnostics, {noremap = true})
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, {noremap = true})
	end,
}

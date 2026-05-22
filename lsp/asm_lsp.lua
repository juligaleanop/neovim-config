return {
	filetypes = {"asm","s"},
	root_dir = require('lspconfig.util').root_pattern('.git', '.asm-lsp.toml'),
	single_file_support = true,
}

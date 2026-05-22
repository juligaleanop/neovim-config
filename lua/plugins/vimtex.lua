return {
  "lervag/vimtex",
  lazy = false,
  init = function()
    vim.g.vimtex_view_general_viewer = "zathura"
	vim.g.vimtex_compiler_latexmk = {
		options = {
			'-synctex=1',
			'-interaction=nonstopmode',
			'-auxdir=aux',
		}
	}
  end
}

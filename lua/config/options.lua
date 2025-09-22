-- desactivar netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- colores 24-bit
vim.opt.termguicolors = true

--numero de linea y numerod de linea relativo
vim.opt.number = true
vim.opt.relativenumber = false

--no quiero que <C-z> me cierre el neovim a la fuerza, solo la bindee en modo normal
vim.opt.ttyfast = true

--indentacion
vim.opt.shiftwidth = 4

--integracion a portapapeles
vim.opt.clipboard = "unnamedplus"

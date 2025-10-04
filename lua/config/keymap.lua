vim.g.mapleader = " "

--guardar archivo actual
vim.keymap.set("n", "<leader>s", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })

--salir, doble q para forzar salida sin guardar
vim.keymap.set("n", "<leader>q", ":q<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>qq", ":q!<CR>", { noremap = true, silent = true })

--copiar a portapapeles
vim.keymap.set({ "n", "v" }, "<leader>c", '"+y', { noremap = true, silent = true })

--pegar desde portapapeles
vim.keymap.set({ "n" }, "<leader>v", '"+p', { noremap = true, silent = true })

--LSP
vim.keymap.set("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>h", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>f", "<cmd>lua vim.lsp.buf.format({async = true})<CR>", { noremap = true, silent = true })

--por si en una de esas se me cruzan los cables y apreto C-z, soy medio mogolico
vim.keymap.set({ "n" }, "<C-z>", "u", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>ww", ":vsplit<CR>", { noremap = true, silent = true })

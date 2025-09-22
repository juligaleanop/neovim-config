return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "schemastore.nvim",
    "mason-lspconfig.nvim",
    "mason.nvim"
  },
  config = function()
    local lspconfig = require "lspconfig"

    require("mason").setup()
    require("mason-lspconfig").setup()
    vim.lsp.handlers["workspace/diagnostic/refresh"] = function(_, _, ctx)
      local ns = vim.lsp.diagnostic.get_namespace(ctx.client_id)
      local bufnr = vim.api.nvim_get_current_buf()
      vim.diagnostic.reset(ns, bufnr)
      return true
    end
	vim.lsp.config({})
	vim.lsp.enable({
			"lua_ls",
			"clangd",
			"pyright",
			"json_ls",
			"verible",
			"rust_analyzer",
			"cmake",
		})
  end,
}

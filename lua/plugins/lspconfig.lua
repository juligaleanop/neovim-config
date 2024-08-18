return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "schemastore.nvim",
    "mason-lspconfig.nvim",
    "mason.nvim",
	{ "ms-jpq/coq_nvim", branch = "coq" },
    { "ms-jpq/coq.artifacts", branch = "artifacts" },
  },
  init = function()
	vim.g.coq_settings = {
    auto_start = true, -- if you want to start COQ at startup
        -- Your COQ settings here
    }
  end,
  config = function()
    local lspconfig = require "lspconfig"

    require("mason").setup()
    require("mason-lspconfig").setup {
      ensure_installed = {
		  "clangd",
	      "basedpyright",
 	      "lua_ls",
	      "jsonls",
	      "vhdl_ls",
		  "rust_analyzer",
		  "cmake",
      },
      automatic_installation = true,
    }
    vim.lsp.handlers["workspace/diagnostic/refresh"] = function(_, _, ctx)
      local ns = vim.lsp.diagnostic.get_namespace(ctx.client_id)
      local bufnr = vim.api.nvim_get_current_buf()
      vim.diagnostic.reset(ns, bufnr)
      return true
    end

    lspconfig.basedpyright.setup {}
    lspconfig.clangd.setup {}

    -- lua
    lspconfig.lua_ls.setup {}

    -- json
    lspconfig.jsonls.setup {
      settings = {
        json = {
          schemas = require("schemastore").json.schemas(),
          validate = {
            enable = true,
          },
        },
      },
    }
    lspconfig.vhdl_ls.setup {}
    lspconfig.cmake.setup {}
	lspconfig.rust_analyzer.setup{}
	lspconfig.cmake.setup{}
  end,
}

return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
	},
	opts = {
		ensure_installed = {
			"lua_ls",
			"clangd",
			"stylua",
			"pyright",
			"jsonls",
			"verible",
			"rust_analyzer",
			"cmake",
			"texlab",
			"asm_lsp",
		},
		automatic_installation = true,
	},
	config = function(_, opts)
		require("mason-lspconfig").setup(opts)

		local capabilities = vim.lsp.protocol.make_client_capabilities()
		local ok_cmp, cmp_lsp = pcall(require, "cmp_nvim_lsp")
		if ok_cmp then
			capabilities = cmp_lsp.default_capabilities(capabilities)
		end

		local server_configs = {
			lua_ls = {
				settings = {
					Lua = {
						diagnostics = { globals = { "vim" } },
						workspace = { checkThirdParty = false },
					},
				},
			},
			clangd = {
				cmd = {
					"clangd",
					"--background-index",
					"--clang-tidy",
				},
				filetypes = { "c", "cpp", "objc", "objcpp" },
			},
			asm_lsp = {
				cmd = {"asm-lsp"},
				filetypes = {"asm"},
				root_markers = {".git", ".gitignore", ".asm-lsp.toml"},
			},
			pyright = {},
			jsonls = {},
			verible = {},
			rust_analyzer = {},
			cmake = {},
			texlab = {},
		}
		for _, server_name in ipairs(opts.ensure_installed) do
            local config = server_configs[server_name] or {}
            vim.lsp.config(server_name, vim.tbl_deep_extend("force", {
                capabilities = capabilities,
            }, config))
        end
	end,
}

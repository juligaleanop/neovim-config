local notify_opts = { title = "Ensure installed" }
---@param name string
local function ensure_installed(name)
  local Registry = require "mason-registry"
  local pkg = Registry.get_package(name)
  if not pkg:is_installed() then
    vim.notify(("Installing %s"):format(name), vim.log.levels.INFO, notify_opts)
    pkg:install():once(
      "closed",
      vim.schedule_wrap(function()
        if pkg:is_installed() then
          vim.notify(("%s was installed"):format(pkg.name), vim.log.levels.INFO, notify_opts)
        else
          vim.notify(("failed to install %s"):format(pkg.name), vim.log.levels.ERROR)
        end
      end)
    )
  end
end

return {
  "williamboman/mason.nvim",
  dependencies = { "williamboman/mason-lspconfig.nvim" },
  build = ":MasonUpdate",
  cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate", "MasonUninstallAll"},
  config = function()
 	require("mason").setup{
	    ensure_installed = {
		    	"lua-language-server",
	    		"clangd",
				"stylua",
				"pyright",
				"jsonls",
				"verible",
				"rust_analyzer",
				"cmake",
			},
	    max_concurrent_installer = 10,
		automatic_installation = true,
    }
  end,
}

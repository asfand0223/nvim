return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")
		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")
		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"cssls", -- css language server
				"jsonls", -- json language server
				"lua_ls", -- lua language server
				"tsserver", -- typescript language server
				"yamlls", -- yaml language server
				"gopls", -- go language sever
			},
			-- auto-install configured servers (with lspconfig)
			automatic_installation = true, -- not the same as ensure_installed
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"stylua", -- lua formatter
				"prettier", -- prettier formatter
				"eslint_d", -- js linter
				"golangci-lint", -- Go linter
				"goimports", -- Go imports formatter
				"gofumpt", -- Go code formatter
				"gomodifytags", -- go field tag formatter
				"golines", -- Go long line formatter
			},
		})
	end,
}
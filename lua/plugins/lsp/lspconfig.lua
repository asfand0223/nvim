return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		-- import lspconfig plugin
		local lspconfig = require("lspconfig")
		local keymap = vim.keymap -- for conciseness
		local opts = { noremap = true, silent = true }

		local on_attach = function(_, bufnr)
			-- set buffer
			opts.buffer = bufnr
			vim.api.nvim_create_autocmd("BufWritePre", {
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({
						async = false,
					})
				end,
			})
		end
		-- used to enable autocompletion (assign to every lsp server config)
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		-- Change the Diagnostic symbols in the sign column (gutter)
		local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end
		-- configure csharp server
		lspconfig["omnisharp"].setup({
			cmd = {
				"/home/aali/.local/share/omnisharp/OmniSharp", -- Linux SDK binary
				"--languageserver",
				"--hostPID",
				tostring(vim.fn.getpid()),
			},
			filetypes = { "cs" },
			root_dir = lspconfig.util.root_pattern("*.sln", "*.csproj", ".git"),
			capabilities = capabilities,
			on_attach = on_attach,
			settings = {
				csharp = {
					formattingOptions = {
						enable = false,
					},
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})
		lspconfig["cssls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
			filetypes = { "css", "scss" },
		})
		lspconfig["ts_ls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
			filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript", "javascriptreact" },
		})
		-- configure lua server (with special settings)
		lspconfig["lua_ls"].setup({
			capabilities = capabilities,
			cmd = { "/home/aali/.local/share/lua_ls/bin/lua-language-server" },
			on_attach = on_attach,
			settings = { -- custom settings for lua
				Lua = {
					runtime = { version = "LuaJIT" },
					-- make the language server recognize "vim" global
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})
	end,
}

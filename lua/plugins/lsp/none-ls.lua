return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier.with({
					filetypes = { "javascript", "typescript", "html", "css", "json", "md", "cshtml" },
				}),
				null_ls.builtins.formatting.csharpier.with({
					filetypes = { "cs", ".cshtml" },
				}),
				require("none-ls.diagnostics.eslint"),
			},
		})
	end,
}

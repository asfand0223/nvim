return {
	"glepnir/lspsaga.nvim",
	branch = "main",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function(_, bufnr)
		require("lspsaga").setup({
			ui = {
				border = "rounded",
				title = true,
			},
			lightbulb = {
				enable = true,
				enable_in_insert = true,
				sign = true,
				virtual_text = true,
			},
		})
	end,
}

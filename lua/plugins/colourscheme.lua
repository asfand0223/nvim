return {
	"eldritch-theme/eldritch.nvim",

	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		local theme = require("eldritch")
		theme.setup({
			transparent = true,
			styles = {
				sidebars = "transparent",
			},
			on_highlights = function(hl, _)
				hl.BufferLineIndicatorSelected = {
					fg = "#4800FF",
				}
			end,
		})
		vim.cmd.colorscheme("eldritch")
		vim.cmd([[
		    highlight FloatBorder guifg=#ffffff 
		]])
		vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
			border = "rounded", -- This sets the border style to rounded
		})
		vim.diagnostic.config({
			float = {
				border = "rounded", -- You can change this to "none", "single", "double", etc.
				source = true, -- Options: "always", "if_many"
				style = "minimal", -- Use "minimal" to avoid line breaks and extra space
			},
		})
	end,
}

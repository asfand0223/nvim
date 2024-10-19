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
				float = "transparent",
			},
			on_highlights = function(hl, _)
				hl.BufferLineIndicatorSelected = {
					fg = "#4800FF",
				}
			end,
		})
		vim.cmd.colorscheme("eldritch")
	end,
}

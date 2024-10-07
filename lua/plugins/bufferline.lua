return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			mode = "tabs",
			indicator = { icon = "", style = "icon" },
			buffer_close_icon = { "" },
			offsets = {
				{
					filetype = "neo-tree",
					text = "File explorer",
					highlight = "Directory",
					text_align = "center",
					separator = true,
				},
			},
		},
		highlights = {
			buffer_selected = {
				fg = "#FFFFFF",
				bg = "#4800FF",
				bold = true,
				italic = true,
			},
			close_button = {
				fg = "#000000",
			},
			close_button_visible = {
				fg = "#000000",
			},
			close_button_selected = {
				fg = "#4800FF",
			},
		},
	},
	config = function(_, opts)
		local ok, bufferline = pcall(require, "bufferline")
		if not ok then
			print("Bufferline not found")
			return
		end

		bufferline.setup(opts)

		-- Ensure the API is available before using it
		if not bufferline.api then
			print("Bufferline API not available")
			return
		end
		local function get_neo_tree_width()
			for _, win in ipairs(vim.api.nvim_list_wins()) do
				local buf = vim.api.nvim_win_get_buf(win)
				if vim.bo[buf].filetype == "neo-tree" then
					return vim.api.nvim_win_get_width(win)
				end
			end
			return 0
		end

		vim.api.nvim_create_autocmd({ "BufWinEnter", "BufWinLeave", "WinResized" }, {
			group = vim.api.nvim_create_augroup("BufferlineOffset", { clear = true }),
			callback = function()
				vim.schedule(function()
					local width = get_neo_tree_width()
					bufferline.api.set_offset(width, width > 0 and "Neo-tree" or nil)
				end)
			end,
		})
	end,
}

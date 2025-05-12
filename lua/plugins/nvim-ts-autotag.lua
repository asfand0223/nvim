return {
	"windwp/nvim-ts-autotag",
	event = "InsertEnter",
	config = function()
		require("nvim-ts-autotag").setup()
	end,
	opts = {
		enable_close = true,
		enable_rename = true,
		enable_close_on_slash = true,
	},
}

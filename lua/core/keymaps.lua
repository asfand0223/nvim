local keymap = vim.keymap

--General keymaps
keymap.set("n", "<leader>s", "<cmd>:w<cr>", { noremap = true, silent = true })
keymap.set("n", "<leader>k", vim.lsp.buf.hover, { noremap = true, silent = true })
keymap.set("n", "<leader>w", "<cmd>:wincmd w<cr>", { noremap = true, silent = true })

-- Yank remaps
-- - Yank
keymap.set("v", "<leader>ay", '"ay<cr>', { noremap = true, silent = true })
keymap.set("v", "<leader>by", '"by<cr>', { noremap = true, silent = true })
keymap.set("v", "<leader>cy", '"cy<cr>', { noremap = true, silent = true })

-- - Paste
keymap.set("n", "<leader>ap", '"ap<cr>', { noremap = true, silent = true })
keymap.set("n", "<leader>bp", '"bp<cr>', { noremap = true, silent = true })
keymap.set("n", "<leader>cp", '"cp<cr>', { noremap = true, silent = true })

-- -Delete
keymap.set("v", "<leader>ad", '"ad<cr>', { noremap = true, silent = true })
keymap.set("v", "<leader>bd", '"bd<cr>', { noremap = true, silent = true })
keymap.set("v", "<leader>cd", '"cd<cr>', { noremap = true, silent = true })

--Neotree keymaps
keymap.set("n", "<leader>/", "<cmd>:Neotree toggle<cr>", { noremap = true, silent = true })
keymap.set("n", "<leader>|", "<cmd>:Neotree reveal<cr>", { noremap = true, silent = true })
keymap.set("n", "<leader>b", "<cmd>:Neotree toggle show buffers right<cr>", { noremap = true, silent = true })
keymap.set("n", "<leader>gs", "<cmd>:Neotree float git_status<cr>", { noremap = true, silent = true })

--Telescope keymaps
keymap.set(
	"n",
	"<leader>ff",
	"<cmd>Telescope find_files<cr>",
	{ noremap = true, silent = true, desc = "Fuzzy find files in cwd" }
)
keymap.set(
	"n",
	"<leader>fr",
	"<cmd>Telescope oldfiles<cr>",
	{ noremap = true, silent = true, desc = "Fuzzy find recent files" }
)
keymap.set(
	"n",
	"<leader>fs",
	"<cmd>Telescope live_grep<cr>",
	{ noremap = true, silent = true, desc = "Find string in cwd" }
)
keymap.set(
	"n",
	"<leader>fc",
	"<cmd>Telescope grep_string<cr>",
	{ noremap = true, silent = true, desc = "Find string under cursor in cwd" }
)
keymap.set(
	"n",
	"<leader>fb",
	"<cmd>Telescope buffers<cr>",
	{ noremap = true, silent = true, desc = "Fuzzy find open buffers" }
)

--Diagnostics keymaps
keymap.set(
	"n",
	"<leader>e",
	'<cmd>lua vim.diagnostic.open_float(0, {scope="line"})<cr>',
	{ noremap = true, silent = true, desc = "Expand error" }
)

-- Quit neovim
keymap.set("n", "<leader>q", ":qa<CR>", { noremap = true, silent = true })

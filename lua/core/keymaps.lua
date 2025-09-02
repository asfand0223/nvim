local keymap = vim.keymap

--General keymaps
keymap.set("n", "<leader>s", "<cmd>:w<cr>", { noremap = true, silent = true })
keymap.set("n", "<leader>w", "<cmd>:wincmd w<cr>", { noremap = true, silent = true })

-- Lspsaga keymaps
local keymap = vim.keymap

-- === LSP / Lspsaga Keymaps ===
-- Hover documentation
keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { noremap = true, silent = true, desc = "Hover documentation" })

-- Peek definition
keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", { noremap = true, silent = true, desc = "Peek definition" })

-- LSP Finder (references & definition)
keymap.set(
	"n",
	"gr",
	"<cmd>Lspsaga lsp_finder<CR>",
	{ noremap = true, silent = true, desc = "Find references/definition" }
)

-- Code actions (normal + visual mode)
keymap.set(
	{ "n", "v" },
	"<leader>ca",
	"<cmd>Lspsaga code_action<CR>",
	{ noremap = true, silent = true, desc = "Code actions" }
)

-- Rename symbol
keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", { noremap = true, silent = true, desc = "Rename symbol" })

-- Show line diagnostics
keymap.set(
	"n",
	"<leader>d",
	"<cmd>Lspsaga show_line_diagnostics<CR>",
	{ noremap = true, silent = true, desc = "Line diagnostics" }
)

-- Jump to previous/next diagnostic
keymap.set(
	"n",
	"[e",
	"<cmd>Lspsaga diagnostic_jump_prev<CR>",
	{ noremap = true, silent = true, desc = "Previous diagnostic" }
)
keymap.set(
	"n",
	"]e",
	"<cmd>Lspsaga diagnostic_jump_next<CR>",
	{ noremap = true, silent = true, desc = "Next diagnostic" }
)

-- Show buffer diagnostics
keymap.set(
	"n",
	"<leader>D",
	"<cmd>Lspsaga show_buf_diagnostics<CR>",
	{ noremap = true, silent = true, desc = "Buffer diagnostics" }
)

-- Optional: Outline (symbol tree)
keymap.set("n", "<leader>o", "<cmd>Lspsaga outline<CR>", { noremap = true, silent = true, desc = "LSP symbol outline" })

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

local keymap = vim.keymap

--Neotree keymaps
keymap.set("n", "<leader>/", "<cmd>:Neotree toggle<cr>", { noremap = true, silent = true })
keymap.set("n", "<leader>|", "<cmd>:Neotree reveal<cr>", { noremap = true, silent = true })
keymap.set("n", "<leader>b", "<cmd>:Neotree toggle show buffers right<cr>", { noremap = true, silent = true })
keymap.set("n", "<leader>s", "<cmd>:Neotree float git_status<cr>", { noremap = true, silent = true })

--Telescope keymaps
keymap.set(
    "n",
    "<leader>ff",
    "<cmd>Telescope find_files<cr>",
    { noremap = true, silent = true },
    { desc = "Fuzzy find files in cwd" }
)
keymap.set(
    "n",
    "<leader>fr",
    "<cmd>Telescope oldfiles<cr>",
    { noremap = true, silent = true },
    { desc = "Fuzzy find recent files" }
)
keymap.set(
    "n",
    "<leader>fs",
    "<cmd>Telescope live_grep<cr>",
    { noremap = true, silent = true },
    { desc = "Find string in cwd" }
)
keymap.set(
    "n",
    "<leader>fc",
    "<cmd>Telescope grep_string<cr>",
    { noremap = true, silent = true },
    { desc = "Find string under cursor in cwd" }
)
keymap.set(
    "n",
    "<leader>fb",
    "<cmd>Telescope buffers<cr>",
    { noremap = true, silent = true },
    { desc = "Fuzzy find open buffers" }
)

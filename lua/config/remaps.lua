vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", ":Ex<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "UndoTree" })
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })

-- Scrolling
vim.keymap.set("n", "<PageUp>", "2<C-Y>", { noremap = true, silent = true })
vim.keymap.set("n", "<PageDown>", "2<C-E>", { noremap = true, silent = true })

-- Tabs
vim.keymap.set({ "n", "v" }, "<leader><left>", ":tabp<CR>")
vim.keymap.set({ "n", "v" }, "<leader><right>", ":tabn<CR>")
vim.keymap.set({ "n", "v" }, "<leader><Tab>", ":tabe<CR>")
vim.keymap.set(
	{ "n", "v" },
	"<leader>tt",
	":tabe | terminal<CR>",
	{ noremap = true, silent = true, desc = "Open Terminal in a new tab." }
)
vim.keymap.set({ "n", "v" }, "<leader>t", ":tabe<CR>", { noremap = true, silent = true, desc = "Open a new tab." })
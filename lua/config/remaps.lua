vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", ":Ex<CR>")
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "UndoTree" })
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
vim.keymap.set("n", "<PageUp>", "15<C-Y>", { noremap = true, silent = true })
vim.keymap.set("n", "<PageDown>", "15<C-E>", { noremap = true, silent = true })

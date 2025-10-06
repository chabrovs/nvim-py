return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        require("nvim-tree").setup({
            hijack_netrw = false,
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 30,
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = true,
            },
            vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
        })
    end
}

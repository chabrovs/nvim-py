return {
    {
        "mason-org/mason.nvim",
        opts = {},
    },
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pyright" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- Enable LSP
            vim.lsp.enable('pyright')
            vim.lsp.enable('lua_ls')

            -- Global mappings for LSP 
            vim.keymap.set("n", "<leader>m", vim.lsp.buf.hover, { desc = "more details" })
            vim.keymap.set("n", "<leader>df", vim.lsp.buf.definition, { desc = "go to definition" })
            vim.keymap.set("n", "<leader>i", vim.lsp.buf.implementation, { desc = "show implemnetation details" })
            vim.keymap.set({"n", "v" }, "<leader>fx", vim.lsp.buf.code_action, { desc = "Fix suggestions" })
            vim.keymap.set({"n", "v" }, "<leader>rf", vim.lsp.buf.references, { desc = "Show references" })
            vim.keymap.set({"n", "v" }, "<leader>mv", vim.lsp.buf.rename, { desc = "Rename" })
            vim.keymap.set({"n", "v" }, "<leader>f", function() vim.lsp.buf.format { async = True } end, { desc = "Rename" })
        end

    }
}

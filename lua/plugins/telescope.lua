return {
    -- Telescope
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function() 
            local builtin = require('telescope.builtin')
            vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Find files" })
            vim.keymap.set("n", "<leader>pg", builtin.live_grep, { desc = "Search in files" })
            vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Search in Git project" })
            vim.keymap.set("n", "<leader>ps", builtin.grep_string, { desc = "Grep in files" })

            --vim.keymap.set("n", "<leader>ps", function()
            --    builtin.grep_string({ search = vim.fn.input("Grep > ") });
            --end
            -- )
        end,
    },
    -- Telescope UI selector
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                            -- even more opts
                        }
                    }
                }
            }
            require("telescope").load_extension("ui-select")
        end
    }
}

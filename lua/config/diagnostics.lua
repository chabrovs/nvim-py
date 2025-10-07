vim.diagnostic.config({
    virtual_text = {
        -- Set to true to show virtual text for diagnostics
        -- You can also provide a table for more options
        -- For example:
        -- {
        --   source = "always", -- Show the source (e.g., 'Pyright')
        --   prefix = '●',      -- Custom prefix for the message
        -- }
        -- Setting it to true will use the default settings.
        virtual_text = true,
        -- Optional: you can change the prefix to something like '●' or '■'
        -- prefix = '●',
    },
    float = {
        source = "always", -- Always show the diagnostic source (e.g., 'Pyright')
        border = "single", -- The border style for the float window
        focusable = false, -- Prevent the float window from stealing focus
        -- You can also set a keymap to manually open the float
    },
    -- Other diagnostic settings...
    signs = true,          -- Show signs in the sign column
    underline = true,      -- Underline the faulty text
    update_in_insert = false, -- Disable diagnostics updates while in insert mode
})

-- Diagnostics remaps
vim.keymap.set('n', '<leader>do', vim.diagnostic.open_float, { desc = 'Open floating diagnostic window' })
vim.keymap.set("n", "<leader>dl", vim.diagnostic.setloclist, { desc = "Set location list from diagnostics" })

vim.keymap.set('n', '<leader>n', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic' })
vim.keymap.set('n', '<leader>p', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic' })

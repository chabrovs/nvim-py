local FAST_JUMP = 5


-- Helper function to aggregate the Vim command starting.
local function jump_cmd(direction)
    return FAST_JUMP .. direction
end


local opts = { noremap = true, silent = true }
local modes = { 'n', 'v' }

-- <C + Arrow Keys>

vim.keymap.set(modes, '<C-Up>', jump_cmd('k'),
    vim.tbl_extend('force', opts, { desc = 'Fast jump N lines Up'})
)

vim.keymap.set(modes, '<C-Down>', jump_cmd('j'),
    vim.tbl_extend('force', opts, { desc = 'Fast jump N lines Down'})
)

-- <C + J/K>

vim.keymap.set(modes, '<C-k>', jump_cmd('k'),
    vim.tbl_extend('force', opts, { desc = 'Fast jump N lines Up'})
)

vim.keymap.set(modes, '<C-j>', jump_cmd('j'),
    vim.tbl_extend('force', opts, { desc = 'Fast jump N lines Down'})
)

-- NeoVIM basic config:

-- Python Specific
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.autoindent = true

-- Other
vim.opt.mouse = a
vim.opt.number = true
vim.opt.scrolloff = 5

-- Files
vim.opt.swapfile = false
vim.opt.filetype = 'on'
vim.opt.syntax = 'on'
vim.opt.encoding = 'utf-8'
vim.opt.fileformat = 'unix'


-- Color scheme and transparent terminal
vim.cmd.colorscheme "catppuccin"
vim.cmd('highlight Normal guibg=NONE ctermbg=NONE')
vim.cmd('highlight NonText guibg=NONE ctermbg=NONE')


-- Spelling
vim.opt.spelllang = 'en_us,en_gb'
vim.opt.spellcapcheck = "[.?!]\\_s\\+[^[:lower:]]"
vim.opt.spell = true

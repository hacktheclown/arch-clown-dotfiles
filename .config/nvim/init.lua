-- # Loads the main LazyVim plugin
require("config.lazy")

-- # LSPs (Language Server Protocol)
require("lspconfig").pyright.setup({})

-- # Classic VIM settings
vim.opt.cursorcolumn = true
vim.opt.colorcolumn = "80"
vim.cmd([[hi ColorColumn ctermbg=grey guibg=grey]])
vim.cmd([[command! VB execute "normal! <C-v>"]])
vim.cmd([[set mouse=]])
vim.opt.clipboard = "unnamedplus"

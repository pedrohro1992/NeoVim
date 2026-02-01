vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = false
-- bootstrap lazy.nvim
require("config.lazy")
require("config.options")
require("config.keymaps")
require("config.autocmd")

-- set colorscheme
vim.o.background='dark'
vim.cmd([[colorscheme catppuccin]])


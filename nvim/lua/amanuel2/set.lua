-- local util = require('one.util')



vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "130"

vim.opt.winwidth = 10
vim.opt.winminwidth = 10

vim.opt.foldenable = true
vim.opt.foldcolumn = '0'
vim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 99

vim.opt.cursorcolumn = false
vim.opt.cursorline = true


-- spell
-- vim.opt.spell = true
-- vim.opt.spellfile = util.configPath('spell/en.utf-8.add')
-- vim.opt.spelllang = { 'en', 'cjk' }
-- vim.opt.spellsuggest = { 'best', 6 }


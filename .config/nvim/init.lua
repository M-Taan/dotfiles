vim.g.mapleader = ' '
vim.g.mapLocalLeader = ' '

vim.opt.number = true

vim.opt.relativenumber = true

vim.opt.showmode = false

vim.opt.breakindent = true

vim.opt.undofile = true

vim.opt.ignorecase = true

vim.opt.smartcase = true

vim.opt.signcolumn = 'yes'

vim.opt.updatetime = 250

vim.opt.cursorline = true

vim.opt.scrolloff = 10

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<ctr-c>', '<cmd>nohlsearch<CR>')

require('config.lazy')

-- [[ Global Events ]]
-- Setting global autocommands

-- Highlight when yanking
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('mmt-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

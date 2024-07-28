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

vim.opt.hlsearch = true

-- [[ Basic Keymaps ]]
vim.keymap.set({'i', 'n', 'v'}, '<C-C>', '<esc>', { desc = 'Make Ctrl+C behave exactly like escape.' })

vim.keymap.set('n', '<esc>', '<cmd>nohlsearch<CR>')

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

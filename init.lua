vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrap = true

local tabSpaces = 4
vim.opt.tabstop = tabSpaces
vim.opt.shiftwidth = tabSpaces

vim.g.mapleader = ' '

local lazy = {}

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
lazy.opts = {}

vim.keymap.set('n', '<space><space>', '<cmd>Lexplore<cr>')
vim.keymap.set('n', '<C-n>', '<cmd>Neotree toggle<cr>')

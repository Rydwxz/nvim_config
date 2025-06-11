require('pre')

vim.g.mapleader = ' '

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable", -- latest stable release
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
  { import = 'plugins' },
  { import = 'plugins.context' },
  { import = 'plugins.format' },
  { import = 'plugins.git' },
  { import = 'plugins.lsp-utils' },
  { import = 'plugins.nav' },
  { import = 'plugins.nv-util' },
  { import = 'plugins.session' },
  { import = 'plugins.txt-obj' },
  { import = 'plugins.win-mgt' },
})

vim.cmd('colorscheme black_hole_sun')
require('kmp')
require('post')

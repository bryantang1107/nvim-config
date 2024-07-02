-- Lazy.nvim Configuration [S]
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

local opts = {}
require("vim-settings")
require("lazy").setup("plugins")

-- Lazy.nvim Configuration [E]
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>d', ':lua vim.diagnostic.open_float() <CR>', { noremap = true })
vim.keymap.set("n", "<C-h>", ":bprev<CR>", {})
vim.keymap.set("n", "<C-l>", ":bnext<CR>", {})

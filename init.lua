vim.cmd([[packadd packer.nvim]])
require("packer").startup(function()
  use("wbthomason/packer.nvim")
  use("morhetz/gruvbox")
  vim.cmd([[colorscheme gruvbox]])
  use("nvim-treesitter/nvim-treesitter")
  require("nvim-treesitter.configs").setup({
    ensure_installed = { "c", "lua", "rust" },
    highlight = {
      enable = false,
    },
  })
  use("nvim-lualine/lualine.nvim")
  require("lualine").setup({
    options = {
      icons_enabled = true,
      theme = "ayu_dark",
    },
  })
  use("junegunn/fzf")
  use("junegunn/fzf.vim")
end)

vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
vim.opt.list = true
vim.opt.listchars:append("tab:> ")
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.swapfile = false
vim.opt.wrap = false
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")

-- Map global leader from \ to Space
vim.g.mapleader = " "
-- Open recently used files
vim.api.nvim_set_keymap("n", "<leader>fr", ":History<CR>", { noremap = true })
-- Open files in same directory as current file
vim.api.nvim_set_keymap("n", "<leader>ff", ":Files<CR>", { noremap = true })

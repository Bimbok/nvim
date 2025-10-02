-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local group = vim.api.nvim_create_augroup("ReactConfig", { clear = true })

-- Auto-install dependencies when package.json changes
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "package.json",
  callback = function()
    vim.cmd("silent !npm install")
    vim.notify("Dependencies installed!", vim.log.levels.INFO)
  end,
  group = group,
})




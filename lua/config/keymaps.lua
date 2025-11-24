-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- toggle neo-tree
vim.keymap.set("n", "<leader>\\", function()
  vim.cmd("Neotree toggle right")
end, { desc = "Toggle Neo-tree" })

-- floating terminal
vim.keymap.set("n", "<leader>'", function()
  vim.cmd("ToggleTerm direction=float")
end, { desc = "Toggle floating terminal" })

-- run current file by <leader>rr
vim.keymap.set("n", "<leader>rr", RunCurrentFile, { noremap = true, silent = true })

-- by using <leader>jf malual formatting.
vim.keymap.set("n", "<leader>jf", function()
  require("conform").format({ async = true, lsp_fallback = true, timeout_ms = 1000 })
  vim.notify("Fomatted", vim.log.levels.INFO)
end, { desc = "Manual format" })

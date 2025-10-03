-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map <leader>ee to toggle tree
vim.keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Open Terminal Horizontal by <leader>jj
local terminal_buf = nil
local terminal_win = nil

vim.keymap.set("n", "<leader>tt", function()
  if
    terminal_buf
    and vim.api.nvim_buf_is_valid(terminal_buf)
    and terminal_win
    and vim.api.nvim_win_is_valid(terminal_win)
  then
    -- Terminal open, close it
    vim.api.nvim_win_close(terminal_win, true)
    terminal_win = nil
  elseif terminal_buf and vim.api.nvim_buf_is_valid(terminal_buf) then
    -- Terminal buffer exists but window not open, open it
    vim.cmd("split")
    terminal_win = vim.api.nvim_get_current_win()
    vim.api.nvim_win_set_buf(terminal_win, terminal_buf)
  else
    -- No terminal exists, create new
    vim.cmd("split | terminal")
    terminal_buf = vim.api.nvim_get_current_buf()
    terminal_win = vim.api.nvim_get_current_win()
  end
end, { desc = "Toggle terminal in split" })

-- run current file by <leader>rr
vim.keymap.set("n", "<leader>rr", RunCurrentFile, { noremap = true, silent = true })

-- save ne file and save it by ctrl + n and ctrl + s.
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- <leader>nn → new empty buffer
map("n", "<leader>nn", ":enew<CR>", opts)

--  <leader>ss → save in normal mode (prompt for filename if new file)
map("n", "<leader>ss", function()
  if vim.bo.modified then
    if vim.fn.expand("%") == "" then
      vim.cmd("saveas " .. vim.fn.input("Save as: "))
    else
      vim.cmd("write")
    end
  end
end, opts)

-- by using <leader>jj malual formatting.
vim.keymap.set("n", "<leader>jj", function()
  require("conform").format({ async = true, lsp_fallback = true, timeout_ms = 1000 })
  vim.notify("For fomatted with <leader>jj 🚀", vim.log.levels.INFO)
end, { desc = "Manual format" })

-- java

-- Run single file
vim.keymap.set("n", "<leader>rj", function()
  local filename = vim.fn.expand("%:p:r")
  vim.cmd("split | terminal javac % && java " .. filename)
end, { desc = "Run Java File" })

-- Maven commands
vim.keymap.set("n", "<leader>mc", ":Rgflow mvn clean<CR>", { desc = "Maven Clean" })
vim.keymap.set("n", "<leader>mp", ":Rgflow mvn package<CR>", { desc = "Maven Package" })
vim.keymap.set("n", "<leader>mt", ":Rgflow mvn test<CR>", { desc = "Maven Test" })
vim.keymap.set("n", "<leader>mr", ":Rgflow mvn spring-boot:run<CR>", { desc = "Spring Boot Run" })

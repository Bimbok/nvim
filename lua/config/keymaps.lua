-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map Ctrl+B to toggle tree
vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Open Terminal Horizontal by Ctrl+j
local terminal_buf = nil
local terminal_win = nil

vim.keymap.set("n", "<C-j>", function()
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

-- run current file by ctrl + r
vim.keymap.set("n", "<C-r>", RunCurrentFile, { noremap = true, silent = true })

-- save ne file and save it by ctrl + n and ctrl + s.
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- ctrl + n → new empty buffer
map("n", "<C-n>", ":enew<CR>", opts)

-- ctrl + s → save in normal mode (prompt for filename if new file)
map("n", "<C-s>", function()
  if vim.bo.modified then
    if vim.fn.expand("%") == "" then
      vim.cmd("saveas " .. vim.fn.input("Save as: "))
    else
      vim.cmd("write")
    end
  end
end, opts)

-- ctrl + s → save in insert mode
map("i", "<C-s>", function()
  vim.cmd("stopinsert")
  if vim.bo.modified then
    if vim.fn.expand("%") == "" then
      vim.cmd("saveas " .. vim.fn.input("Save as: "))
    else
      vim.cmd("write")
    end
  end
end, opts)

-- by using ctrl + f malual formatting.
vim.keymap.set("n", "<C-f>", function()
  require("conform").format({ async = true, lsp_fallback = true, timeout_ms = 1000 })
  vim.notify("Formatted with Ctrl+F 🚀", vim.log.levels.INFO)
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

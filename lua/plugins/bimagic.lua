return {
  {
    "akinsho/toggleterm.nvim",
    opts = function(_, opts)
      -- Ensure toggleterm is set up (usually handled by LazyVim, but safe to extend)
      opts.size = 20
      opts.open_mapping = [[<c-\>]]
    end,
    keys = {
      {
        "<leader>gm",
        function()
          -- 1. Define the custom terminal
          local Terminal = require("toggleterm.terminal").Terminal
          local bimagic = Terminal:new({
            cmd = "bimagic", -- This assumes 'bimagic' is in your global PATH
            hidden = true,
            direction = "float",
            float_opts = {
              border = "curved", -- 'single', 'double', 'shadow', 'curved'
              width = 100,
              height = 25,
              title = "  Bimagic Git Wizard ",
            },
            -- 2. Close the window when the script exits
            close_on_exit = true,

            -- Optional: Run logic when opening/closing
            on_open = function(term)
              -- Force insert mode so you can navigate the gum menu immediately
              vim.cmd("startinsert!")

              -- Add a local keymap to close it with 'q' or 'Esc' if needed
              -- (Though bimagic has its own Exit option, which is cleaner)
              vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
            end,
          })

          -- 3. Toggle the terminal
          bimagic:toggle()
        end,
        desc = "Bimagic (Git Wizard)",
      },
    },
  },
}

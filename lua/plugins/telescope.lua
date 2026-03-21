-- ~/.config/nvim/lua/plugins/telescope.lua

return {
  "nvim-telescope/telescope.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "BurntSushi/ripgrep", -- make sure you install ripgrep externally
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make", cond = vim.fn.executable("make") == 1 },
  },
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")

    telescope.setup({
      defaults = {
        prompt_prefix = "   ",
        selection_caret = " ❯ ",
        entry_prefix = "   ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
          horizontal = {
            prompt_position = "top",
            preview_width = 0.55,
            results_width = 0.8,
          },
          vertical = {
            mirror = false,
          },
          width = 0.87,
          height = 0.80,
          preview_cutoff = 120,
        },
        path_display = { "truncate" },
        winblend = 0,
        border = {},
        borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        color_devicons = true,
        use_less = true,
        set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
      },
      pickers = {
        find_files = {
          theme = "dropdown",
          previewer = false,
          hidden = true,
        },
        live_grep = {
          theme = "dropdown",
          previewer = false,
        },
        buffers = {
          theme = "dropdown",
          previewer = false,
        },
      },
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        },
      },
    })

    -- Load fzf extension if available
    pcall(telescope.load_extension, "fzf")

    -- Keymaps (LazyVim friendly)
    local map = vim.keymap.set
    local opts = { noremap = true, silent = true, desc = "Telescope: " }

    map("n", "<leader>ff", builtin.find_files, vim.tbl_extend("force", opts, { desc = "Find Files" }))
    map("n", "<leader>fg", builtin.live_grep, vim.tbl_extend("force", opts, { desc = "Live Grep" }))
    map("n", "<leader>fb", builtin.buffers, vim.tbl_extend("force", opts, { desc = "Find Buffers" }))
    map("n", "<leader>fh", builtin.help_tags, vim.tbl_extend("force", opts, { desc = "Help Tags" }))
    map("n", "<leader>fr", builtin.oldfiles, vim.tbl_extend("force", opts, { desc = "Recent Files" }))
  end,
}

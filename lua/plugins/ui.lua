return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("bufferline").setup({})
    end,
  },
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
  },
  {
    "vyfor/cord.nvim",
    build = ":Cord update", -- This will download the necessary server component
    event = "VeryLazy", -- Load it after startup
    -- opts = {} -- You can add configuration options here if you want
  },
  { "github/copilot.vim" },
  {
    "karb94/neoscroll.nvim",
    opts = {
      -- All these keys are optional, but this is a nice default
      easing_function = "quadratic", -- "linear", "quadratic", "cubic", "quintic"
      hide_cursor = true,
      stop_eof = true,
    },
  },
  {
    {
      "rcarriga/nvim-notify",
      config = function()
        vim.notify = require("notify")
        require("notify").setup({
          stages = "slide", -- or "slide", "static"
          timeout = 3000,
          background_colour = "#000000",
        })
      end,
    },
    {
      "folke/noice.nvim",
      dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
      },
      event = "VeryLazy",
      config = function()
        require("noice").setup({
          lsp = {
            progress = {
              enabled = true,
            },
            signature = {
              enabled = true,
            },
            hover = {
              enabled = true,
            },
          },
          messages = {
            enabled = true,
          },
          notify = {
            enabled = true,
          },
          views = {
            mini = {
              win_options = {
                winblend = 10,
              },
            },
          },
          cmdline = {
            enabled = true,
            view = "cmdline_popup",
          },
          popupmenu = {
            enabled = true,
          },
        })
      end,
    },
  },
  {
    {
      "akinsho/toggleterm.nvim",
      version = "*",
      config = true,
    },
  },
  {
    "pocco81/auto-save.nvim",
    trigger_event = { "InsertLeave", "TextChanged" },
    opts = {
      enabled = true,
      execution_message = {
        message = function()
          return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
        end,
        dim = 0.18,
        cleaning_interval = 1250,
      },
      debounce_delay = 135,
      condition = function(buf)
        local fn = vim.fn
        local utils = require("auto-save.utils.data")

        if fn.getbufvar(buf, "&modifiable") == 1 and utils.not_in(fn.getbufvar(buf, "&filetype"), {}) then
          return true -- met condition(s), can save
        end
        return false -- can't save
      end,
    },
  },
  {
    {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons", -- optional, but recommended
      },
      lazy = false, -- neo-tree will lazily load itself
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      -- This is the setting you want!
      current_line_blame = true, -- Toggle blame information on the current line
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "eol", -- 'eol' (end of line) or 'overlay'
        delay = 500, -- Wait 500ms before showing blame
        ignore_whitespace = false,
      },
      -- This formats the text just like you described
      current_line_blame_formatter = " <author>, <author_time:%R> • <summary:-(40)>",
    },
  },
}

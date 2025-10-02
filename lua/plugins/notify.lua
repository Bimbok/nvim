return {
  {
    "rcarriga/nvim-notify",
    config = function()
      vim.notify = require("notify")
      require("notify").setup({
        stages = "fade", -- or "slide", "static"
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
}

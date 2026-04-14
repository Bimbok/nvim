return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      file_types = { "markdown", "Avante" },
      code = {
        sign = false,
        width = "block",
        right_pad = 1,
      },
      heading = {
        sign = false,
        icons = {}, -- clear icons if you want a clean look
      },
    },
    ft = { "markdown", "norg", "rmd", "org" },
    config = function(_, opts)
      require("render-markdown").setup(opts)
      vim.keymap.set("n", "<leader>mt", require("render-markdown").toggle, { desc = "Toggle Render Markdown" })
    end,
  },
  {
    "Thiago4532/mdmath.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    ft = { "markdown", "rmd", "org" },
    build = ":MdMath build",
    opts = {
      filetypes = { "markdown", "rmd", "org" },
      theme = "dark",
      foreground_color = "#ebdbb2",
    },
  },
  -- 1. The Viewer (Adds alignment and borders)
  {
    "hat0uma/csvview.nvim",
    ft = { "csv", "tsv" },
    opts = {
      parser = { comments = { "#", "//" } },
      view = {
        display_mode = "border", -- Spreadsheet look
      },
    },
    config = function(_, opts)
      local csvview = require("csvview")
      csvview.setup(opts)
      csvview.enable()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "csv", "tsv" },
        callback = function()
          csvview.enable()
        end,
      })
    end,
  },
  {
    "mechatroner/rainbow_csv",
    ft = { "csv", "tsv" },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {},
        lua_ls = {
          mason = false,
        },
        bashls = {
          mason = false,
        },
      },
    },
  },
}

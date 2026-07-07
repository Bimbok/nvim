return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      file_types = { "markdown", "Avante", "codecompanion", "rmd", "org" },
      render_modes = { "n", "c", "t", "v" },
      heading = {
        sign = true,
        icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
        position = "overlay",
        width = { "full", "block" },
        border = { true, true, false, false, false, false },
        left_margin = 0,
        left_pad = 1,
        right_pad = 2,
      },
      code = {
        sign = false,
        width = "block",
        left_pad = 2,
        right_pad = 4,
        border = "thin",
      },
      checkbox = {
        enabled = true,
        unchecked = { icon = "󰄱 " },
        checked = { icon = " " },
        custom = {
          todo = { raw = "[-]", rendered = "󰥔 ", highlight = "RenderMarkdownTodo" },
          doing = { raw = "[/]", rendered = "󰗢 ", highlight = "RenderMarkdownTodo" },
          important = { raw = "[!]", rendered = "󰀪 ", highlight = "RenderMarkdownWarn" },
        },
      },
      indent = {
        enabled = true,
        per_level = 2,
        skip_level = 1,
      },
      pipe_table = {
        enabled = true,
        preset = "round",
        style = "full",
        cell = "padded",
        padding = 1,
      },
      link = {
        enabled = true,
        footnote = { icon = "󰌷 " },
        web = { icon = "󰖟 " },
        wiki = { icon = "󱗖 " },
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

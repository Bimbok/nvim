return {
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

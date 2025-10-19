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
}

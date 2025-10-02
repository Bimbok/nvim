-- return {
--   {
--     "scottmckendry/cyberdream.nvim",
--     priority = 1000,
--     config = function()
--       require("cyberdream").setup({
--         transparent = false,
--         italic_comments = true,
--         hide_fillchars = true,
--         borderless_telescope = false,
--       })
--       vim.cmd("colorscheme cyberdream")
--     end,
--   },
-- }

-- lua/plugins/slack-theme.lua

-- return {
--   "catppuccin/nvim",
--   name = "catppuccin",
--   priority = 1000,
--   config = function()
--     require("catppuccin").setup({
--       flavour = "mocha",
--       transparent_background = false,
--       term_colors = true,
--       integrations = {
--         cmp = true,
--         gitsigns = true,
--         nvimtree = true,
--         telescope = true,
--         which_key = true,
--         indent_blankline = {
--           enabled = true,
--           colored_indent_levels = false,
--         },
--         native_lsp = {
--           enabled = true,
--         },
--       },
--       color_overrides = {
--         mocha = {
--           base = "#1E1E1E", -- Slack dark background
--           mantle = "#232323", -- slightly lighter for sidebar
--           crust = "#2C2C2C", -- borders or statusline
--           surface0 = "#363636", -- input box
--           text = "#ECEFF4", -- main text
--           lavender = "#7287FD", -- Slack-like purple accent
--         },
--       },
--       custom_highlights = function(colors)
--         return {
--           LineNr = { fg = colors.surface0 },
--           CursorLineNr = { fg = colors.lavender },
--           VertSplit = { fg = colors.crust },
--           StatusLine = { bg = colors.crust, fg = colors.text },
--         }
--       end,
--     })

--     vim.cmd.colorscheme("catppuccin")
--   end,
-- }

-- File: lua/plugins/colorscheme.lua
return {
  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    lazy = false, -- load immediately
    priority = 1000, -- make sure it loads before other plugins
    config = function()
      require("gruvbox").setup({
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines
        contrast = "soft", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = true,
      })
      vim.cmd([[colorscheme gruvbox]])
    end,
  },
}

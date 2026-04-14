return {
  -- {
  --   "neanias/everforest-nvim",
  --   name = "everforest",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("everforest").setup({
  --       background = "hard",
  --       transparent_background_level = 2,
  --       italics = true,
  --       disable_italic_comments = false,
  --       ui_contrast = "high",
  --
  --       on_highlights = function(hl, palette)
  --         -- Unified Float UI
  --         hl.NormalFloat = { bg = palette.none }
  --         hl.FloatBorder = { fg = palette.blue, bg = palette.none }
  --         hl.FloatTitle = { fg = palette.blue, bg = palette.none, bold = true }
  --
  --         -- Noice specific
  --         hl.NoiceCmdlinePopup = { bg = palette.bg1 }
  --         hl.NoiceCmdlinePopupBorder = { fg = palette.purple, bg = palette.none }
  --         hl.NoiceCmdlineIcon = { fg = palette.purple }
  --
  --         -- Telescope specific
  --         hl.TelescopeNormal = { bg = palette.none }
  --         hl.TelescopeBorder = { fg = palette.grey1, bg = palette.none }
  --         hl.TelescopePromptBorder = { fg = palette.orange, bg = palette.none }
  --         hl.TelescopePromptTitle = { fg = palette.orange, bg = palette.none, bold = true }
  --         hl.TelescopeSelection = { bg = palette.bg3, bold = true }
  --         hl.TelescopeMatching = { fg = palette.yellow, bold = true }
  --
  --         -- BufferLine Enhancements
  --         hl.BufferLineFlll = { bg = palette.aqua }
  --         hl.BufferLineSeparator = { fg = palette.bg5, bg = palette.none }
  --         hl.BufferLineBufferSelected = { bg = palette.bg3, fg = palette.fg, bold = true, italic = true }
  --         hl.BufferLineSeparatorSelected = { fg = palette.bg0, bg = palette.bg3 }
  --         hl.BufferLineIndicatorSelected = { fg = palette.green, bg = palette.bg3 }
  --
  --         -- Blink.cmp (Completion Menu)
  --         hl.BlinkCmpMenu = { bg = palette.none, fg = palette.fg }
  --         hl.BlinkCmpMenuBorder = { fg = palette.blue, bg = palette.none }
  --         hl.BlinkCmpDoc = { bg = palette.none, fg = palette.fg }
  --         hl.BlinkCmpDocBorder = { fg = palette.blue, bg = palette.none }
  --         hl.BlinkCmpKindFunction = { fg = palette.green, bg = palette.none }
  --         hl.BlinkCmpKindMethod = { fg = palette.green, bg = palette.none }
  --         hl.BlinkCmpKindVariable = { fg = palette.blue, bg = palette.none }
  --         hl.BlinkCmpKindKeyword = { fg = palette.red, bg = palette.none }
  --         hl.BlinkCmpKindClass = { fg = palette.yellow, bg = palette.none }
  --
  --         -- UI Elements
  --         hl.WinSeparator = { fg = palette.bg5, bold = true }
  --         hl.CursorLine = { bg = palette.bg1 }
  --         hl.MsgArea = { bg = palette.none }
  --         hl.StatusLine = { bg = palette.none }
  --         hl.StatusLineNC = { bg = palette.none }
  --
  --         -- Snacks Dashboard Overrides
  --         hl.SnacksDashboardHeader = { fg = palette.orange, bold = true }
  --         hl.SnacksDashboardDesc = { fg = palette.aqua }
  --         hl.SnacksDashboardKey = { fg = palette.yellow, bold = true }
  --         hl.SnacksDashboardIcon = { fg = palette.green }
  --         hl.SnacksDashboardSpecial = { fg = palette.blue }
  --         hl.SnacksDashboardFooter = { fg = palette.grey1, italic = true }
  --
  --         -- Noice Cmdline Transparency
  --         hl.NoiceCmdlinePopup = { bg = palette.none }
  --         hl.NoiceCmdlinePopupBorder = { fg = palette.purple, bg = palette.none }
  --         hl.NoiceCmdlineIcon = { fg = palette.purple }
  --         hl.NoiceCmdlinePopupTitle = { fg = palette.purple, bg = palette.none, bold = true }
  --       end,
  --     })
  --
  --     -- Load the colorscheme
  --     require("everforest").load()
  --   end,
  -- },

  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    lazy = false, -- load immediately
    priority = 1000, -- make sure it loads before other plugins
    config = function()
      local palette = {
        bg0 = "#101010",
        bg1 = "#161616",
        bg2 = "#202020",
        bg3 = "#2a2a2a",
        fg0 = "#fbf1c7",
        fg1 = "#f2e5bc",
        fg2 = "#ddc7a1",
        gray = "#a89984",
        brown = "#928374",
        red = "#fb4934",
        orange = "#fe8019",
        yellow = "#fabd2f",
        green = "#b8bb26",
        aqua = "#8ec07c",
        blue = "#83a598",
        purple = "#d3869b",
      }

      require("gruvbox").setup({
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          comments = true,
          emphasis = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines
        contrast = "hard", -- can be "hard", "soft" or empty string
        palette_overrides = {
          bright_green = "#b8bb26",
          bright_red = "#fb4934",
          bright_yellow = "#fabd2f",
          bright_blue = "#83a598",
          bright_purple = "#d3869b",
          bright_aqua = "#8ec07c",
          bright_orange = "#fe8019",
          neutral_orange = "#d65d0e",
        },
        overrides = {
          -- Unified Float UI
          NormalFloat = { bg = "none" },
          FloatBorder = { fg = "#7c6f64", bg = "none" },
          FloatTitle = { fg = "#ebdbb2", bg = "none", bold = true },

          -- Noice specific
          NoiceCmdlinePopup = { bg = "none" },
          NoiceCmdlinePopupBorder = { fg = "#fabd2f", bg = "none" },
          NoiceCmdlineIcon = { fg = "#fabd2f" },

          -- Telescope specific
          TelescopeNormal = { bg = "none" },
          TelescopeBorder = { fg = "#7c6f64", bg = "none" },
          TelescopePromptBorder = { fg = "#fabd2f", bg = "none" },
          TelescopePromptTitle = { fg = "#fabd2f", bg = "none", bold = true },

          -- BufferLine transparency and colors
          BufferLineFill = { bg = "none" },
          BufferLineBackground = { bg = "none" },
          BufferLineSeparator = { fg = "#fb4934", bg = "none" },
          BufferLineSeparatorSelected = { fg = "#7c6f64", bg = "none" },
          BufferLineBufferSelected = { bg = "none", fg = "#ebdbb2", bold = true },
          BufferLineBufferVisible = { bg = "none", fg = "#928374" },

          -- Blink.cmp specific (Completion Menu)
          BlinkCmpMenu = { bg = "none", fg = "#ebdbb2" },
          BlinkCmpMenuBorder = { fg = "#7c6f64", bg = "none" },
          BlinkCmpDoc = { bg = "none", fg = "#ebdbb2" },
          BlinkCmpDocBorder = { fg = "#7c6f64", bg = "none" },
          BlinkCmpSignatureHelp = { bg = "none", fg = "#ebdbb2" },
          BlinkCmpSignatureHelpBorder = { fg = "#7c6f64", bg = "none" },

          -- Custom colors for types/kinds in the menu
          BlinkCmpKindFunction = { fg = "#b8bb26", bg = "none" },
          BlinkCmpKindMethod = { fg = "#b8bb26", bg = "none" },
          BlinkCmpKindVariable = { fg = "#83a598", bg = "none" },
          BlinkCmpKindKeyword = { fg = "#fb4934", bg = "none" },
          BlinkCmpKindClass = { fg = "#fabd2f", bg = "none" },

          -- Subtle UI elements
          WinSeparator = { fg = "#3c3836" },
          CursorLine = { bg = "#282828" },
          MsgArea = { bg = "none" },
          StatusLine = { bg = "none" },
          StatusLineNC = { bg = "none" },

          SnacksDashboardHeader = { fg = palette.orange, bold = true },
          SnacksDashboardDesc = { fg = palette.fg1 },
          SnacksDashboardKey = { fg = palette.yellow, bold = true },
          SnacksDashboardIcon = { fg = palette.green },
          SnacksDashboardSpecial = { fg = palette.blue },
          SnacksDashboardFooter = { fg = palette.gray, italic = true },
        },
        dim_inactive = false,
        transparent_mode = true,
      })
      vim.cmd([[colorscheme gruvbox]])
    end,
  },
}

return {
  -- lua/plugins/kanagawa.lua
  -- {
  --   "rebelot/kanagawa.nvim",
  --   name = "kanagawa",
  --   lazy = false, -- Ensure it loads during startup
  --   priority = 1000, -- Load before other plugins
  --   config = function()
  --     require("kanagawa").setup({
  --       compile = false, -- Enable compiling the colorscheme for faster startup
  --       undercurl = true, -- Enable undercurls
  --       commentStyle = { italic = true },
  --       functionStyle = {},
  --       keywordStyle = { italic = true },
  --       statementStyle = { bold = true },
  --       typeStyle = {},
  --       transparent = true, -- Master switch for transparency
  --       dimInactive = false, -- Do not dim inactive windows
  --       terminalColors = true, -- Define vim.g.terminal_color_{0,17}
  --
  --       theme = "dragon", -- The darkest, highest-contrast variant
  --       background = {
  --         dark = "dragon",
  --         light = "lotus",
  --       },
  --
  --       colors = {
  --         theme = {
  --           all = {
  --             ui = {
  --               bg_gutter = "none", -- Remove the background of LineNr and fold columns
  --             },
  --           },
  --         },
  --       },
  --
  --       overrides = function(colors)
  --         local theme = colors.theme
  --         return {
  --           -- Transparent Floating Windows and Borders
  --           NormalFloat = { bg = "none" },
  --           FloatBorder = { bg = "none", fg = theme.ui.special },
  --           FloatTitle = { bg = "none", fg = theme.ui.special, bold = true },
  --
  --           -- Transparent Telescope (if you use it)
  --           TelescopeNormal = { bg = "none" },
  --           TelescopeBorder = { bg = "none", fg = theme.ui.special },
  --           TelescopePromptNormal = { bg = "none" },
  --           TelescopePromptBorder = { bg = "none", fg = theme.ui.special },
  --           TelescopeTitle = { fg = theme.ui.special, bold = true },
  --
  --           -- Transparent NvimTree (if you use it)
  --           NvimTreeNormal = { bg = "none" },
  --           NvimTreeNormalNC = { bg = "none" },
  --
  --           -- High Contrast Tweaks
  --           -- Making the visual selection punchy (using a wave blue)
  --           Visual = { bg = theme.ui.bg_visual },
  --           -- Cursor line distinct
  --           CursorLine = { bg = theme.ui.bg_p1 },
  --
  --           -- Popup menu (completion, etc.)
  --           Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
  --           PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
  --
  --           -- Clear window separators
  --           WinSeparator = { fg = theme.ui.bg_p1, bg = "none" },
  --         }
  --       end,
  --     })
  --
  --     -- Setup must be called before loading
  --     vim.cmd("colorscheme kanagawa-dragon")
  --   end,
  -- },

  -- lua/plugins/rose-pine.lua
  -- {
  --   "rose-pine/neovim",
  --   name = "rose-pine",
  --   lazy = false, -- Ensure it loads during startup
  --   priority = 1000, -- Load before other plugins to prevent flashes of unstyled text
  --   config = function()
  --     require("rose-pine").setup({
  --       variant = "main", -- 'main' offers the most contrast out of the dark variants
  --       dark_variant = "main",
  --       dim_inactive_windows = false,
  --       extend_background_behind_borders = true,
  --
  --       enable = {
  --         terminal = true,
  --         legacy_highlights = true,
  --         migrations = true,
  --       },
  --
  --       styles = {
  --         bold = true,
  --         italic = true,
  --         transparency = true, -- Master switch for transparency
  --       },
  --
  --       groups = {
  --         border = "muted",
  --         link = "iris",
  --         panel = "surface",
  --
  --         error = "love",
  --         hint = "iris",
  --         info = "foam",
  --         note = "pine",
  --         todo = "rose",
  --         warn = "gold",
  --
  --         git_add = "foam",
  --         git_change = "rose",
  --         git_delete = "love",
  --         git_dirty = "rose",
  --         git_ignore = "muted",
  --         git_merge = "iris",
  --         git_rename = "pine",
  --         git_stage = "iris",
  --         git_text = "rose",
  --         git_untracked = "subtle",
  --
  --         h1 = "iris",
  --         h2 = "foam",
  --         h3 = "rose",
  --         h4 = "gold",
  --         h5 = "pine",
  --         h6 = "foam",
  --       },
  --
  --       highlight_groups = {
  --         -- Force transparency on floating windows and borders
  --         NormalFloat = { bg = "none" },
  --         FloatBorder = { bg = "none", fg = "highlight_high" },
  --
  --         -- Telescope UI transparency (if you use it)
  --         TelescopeNormal = { bg = "none" },
  --         TelescopeBorder = { bg = "none", fg = "highlight_high" },
  --         TelescopePromptNormal = { bg = "none" },
  --
  --         -- NvimTree transparency (if you use it)
  --         NvimTreeNormal = { bg = "none" },
  --         NvimTreeNormalNC = { bg = "none" },
  --
  --         -- Contrast and readability tweaks
  --         Comment = { fg = "subtle", italic = true },
  --         Visual = { bg = "highlight_med" }, -- Punchier visual selection
  --         CursorLine = { bg = "highlight_low" }, -- Make the current line distinct
  --         ColorColumn = { bg = "surface" },
  --
  --         -- VertSplit is deprecated in newer Neovim, using WinSeparator
  --         WinSeparator = { fg = "highlight_high", bg = "none" },
  --       },
  --     })
  --
  --     vim.cmd("colorscheme rose-pine")
  --   end,
  -- },

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
        contrast = "soft", -- can be "hard", "soft" or empty string
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
          BufferLineSeparator = { fg = "#3c3836", bg = "none" },
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
        },
        dim_inactive = false,
        transparent_mode = true,
      })
      vim.cmd([[colorscheme gruvbox]])
    end,
  },
}

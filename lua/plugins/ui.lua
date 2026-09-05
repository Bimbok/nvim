return {
  {
    "stevearc/conform.nvim",
    lazy = true,
    cmd = "ConformInfo",
    keys = {
      {
        "<leader>jf",
        function()
          require("conform").format({ async = true, lsp_fallback = true, timeout_ms = 1000 })
          vim.notify("Formatted", vim.log.levels.INFO)
        end,
        mode = "n",
        desc = "Manual format",
      },
    },
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        c = { "clang-format" },
        cpp = { "clang-format" },
        python = { "isort", "black" },
        sh = { "shfmt" },
        bash = { "shfmt" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        json = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        markdown = { "prettier" },

        ["_"] = { "trim_whitespace" },
      },

      format_on_save = false,
    },
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
  {
    "karb94/neoscroll.nvim",
    event = "VeryLazy",
    config = function()
      require("neoscroll").setup({
        mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
        easing_function = "quintic",
        hide_cursor = true,
        stop_eof = true,
        respect_scrolloff = false,
        cursor_scrolls_alone = true,
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
          progress = { enabled = true },
          signature = {
            enabled = true,
            auto_open = {
              enabled = true,
              trigger = true,
              luasnip = true,
              throttle = 50,
            },
            view = "hover", -- use the same view as hover for signatures
          },
          hover = {
            enabled = true,
            view = "hover", -- specifically ensure it uses the 'hover' view
          },
        },
        messages = { enabled = true },
        notify = { enabled = true },
        views = {
          hover = {
            border = {
              style = "rounded",
              padding = { 0, 2 },
            },
            win_options = { winblend = 0 },
            size = { max_width = 80 },
          },
          mini = {
            win_options = { winblend = 8 },
          },
          cmdline_popup = {
            border = {
              style = "rounded",
              padding = { 0, 2 },
            },
            position = { row = 5, col = "50%" },
            size = { width = 60, height = "auto" },
          },
          popupmenu = {
            relative = "editor",
            position = { row = 8, col = "50%" },
            size = { width = 60, height = 10 },
            border = { style = "rounded", padding = { 0, 2 } },
            win_options = { winhighlight = { Normal = "NormalFloat", FloatBorder = "NoiceCmdlinePopupBorder" } },
          },
        },
        cmdline = {
          enabled = true,
          view = "cmdline_popup",
          format = {
            cmdline = { pattern = "^:", icon = "", lang = "vim" },
            search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
            search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
            filter = { pattern = "^:%s*!", icon = "", lang = "bash" },
            lua = { pattern = { "^:%s*lua%s+", "^:%s*lua%s*=%s*", "^:%s*=%s*" }, icon = "", lang = "lua" },
            help = { pattern = "^:%s*he?l?p?%s+", icon = "" },
          },
        },
        popupmenu = {
          enabled = true,
          backend = "nui",
        },
      })
    end,
  },

  {
    {
      "akinsho/toggleterm.nvim",
      version = "*",
      keys = {
        { "<leader>'", "<cmd>ToggleTerm direction=float<cr>", desc = "Toggle floating terminal" },
        { "<c-\\>", "<cmd>ToggleTerm<cr>", mode = { "n", "t" }, desc = "Toggle terminal" },
      },
      opts = {
        size = 20,
        open_mapping = [[<c-\>]],
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 2,
        start_in_insert = true,
        persist_size = true,
        direction = "float",
        float_opts = {
          border = "rounded",
          winblend = 0,
          winhighlight = {
            Normal = "NormalFloat",
            NormalFloat = "NormalFloat",
            FloatBorder = "FloatBorder",
          },
          width = function()
            return math.floor(vim.o.columns * 0.92)
          end,
          height = function()
            return math.floor(vim.o.lines * 0.82)
          end,
        },
      },
    },
  },
  {
    "pocco81/auto-save.nvim",
    event = "LazyFile",
    trigger_event = { "InsertLeave", "FocusLost", "TextChanged" },
    opts = {
      enabled = true,
      execution_message = {
        message = function()
          return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
        end,
        dim = 0.18,
        cleaning_interval = 1250,
      },
      debounce_delay = 1000,
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
    "lewis6991/gitsigns.nvim",
    event = "LazyFile",
    opts = {
      current_line_blame = true,
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
  {
    "norcalli/nvim-colorizer.lua",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("colorizer").setup({ "*" }, {
        css = true,
        tailwind = true,
        mode = "background",
      })
    end,
  },

  {
    "uga-rosa/ccc.nvim",
    keys = {
      { "<leader>cp", "<cmd>CccPick<cr>", desc = "Open Color Picker" },
    },
    opts = {
      -- This ensures the picker shows up with the right colors
      highlighter = {
        auto_enable = true,
        lsp = true,
      },
    },
    config = function(_, opts)
      local ccc = require("ccc")
      ccc.setup(opts)
    end,
  },

  {
    "mikavilpas/yazi.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },

    cmd = { "Yazi" },
    keys = {
      { "<leader>-", "<cmd>Yazi<cr>", desc = "Yazi (Current File)" },
      { "<leader>cw", "<cmd>Yazi cwd<cr>", desc = "Yazi (Working Dir)" },
      { "<c-up>", "<cmd>Yazi toggle<cr>", desc = "Resume Yazi" },
    },

    opts = {
      open_for_directories = false,
      highlight_hovered_buffers_in_same_window = true,
      keymaps = {
        show_help = "<f1>",
      },

      floating_window_scaling_factor = 0.8,
      yazi_floating_window_winblend = 0, -- 0 = Solid (Better for images)
    },

    init = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
    end,
  },

  {
    "folke/flash.nvim",
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
        desc = "Flash Jump",
      },
      {
        "S",
        mode = { "n", "x", "o" },
        function()
          require("flash").treesitter()
        end,
        desc = "Flash Treesitter",
      },
      {
        "r",
        mode = "o",
        function()
          require("flash").remote()
        end,
        desc = "Remote Flash",
      },
      {
        "R",
        mode = { "o", "x" },
        function()
          require("flash").treesitter_search()
        end,
        desc = "Treesitter Search",
      },
      {
        "<c-s>",
        mode = { "c" },
        function()
          require("flash").toggle()
        end,
        desc = "Toggle Flash Search",
      },
    },

    opts = {
      modes = {
        char = {
          jump_labels = true,
        },
        search = {
          enabled = true,
        },
      },
      label = {
        uppercase = true,
        style = "inline",
      },
    },
  },
  {
    "chentoast/marks.nvim",
    event = "LazyFile",
    opts = {},
  },
  {
    "sphamba/smear-cursor.nvim",
    event = "VeryLazy",

    opts = {
      cursor_color = "#fabd2f",
      stiffness = 0.4,
      trailing_stiffness = 0.15,
      trailing_exponent = 0.1,
      distance_stop_animating = 0.1,
      gamma = 0.8,

      hide_target_hack = true,

      legacy_computing_symbols_support = true,
      transparent_bg_fallback_color = "#282828",
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      bigfile = { enabled = true },
      dashboard = {
        enabled = true,
        preset = {
          header = [[
░█▀▀▄ ░▀░ █▀▄▀█ █▄▄▄ ▄▀▀▄ █░█
░█▀▀▄ ▀█▀ █░▀░█ █▄█░ █░░█ █▀▄
░▀▀▀░ ▀▀▀ ▀░░░▀ ▀░▀░ ░▀▀░ ▀░▀
        ]],
        },
        sections = {
          { section = "header" },
          { section = "keys", gap = 1, padding = 1 },
          { section = "startup" },
        },
      },
      indent = {
        enabled = true,
        char = "│",
        scope = {
          enabled = true,
          char = "┃",
          underline = false,
        },
      },
      input = { enabled = true },
      notifier = { enabled = true },
      quickfile = { enabled = true },
      scroll = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
      zen = {
        enabled = true,
        toggles = {
          dim = false,
        },
        win = {
          width = 100,
        },
      },
    },
    keys = {
      {
        "<leader>z",
        function()
          require("snacks").zen()
        end,
        desc = "Toggle Zen Mode",
      },
      {
        "<leader>Z",
        function()
          require("snacks").zen.zoom()
        end,
        desc = "Toggle Zoom Mode",
      },
    },
  },
  {
    "isakbm/gitgraph.nvim",
    keys = {
      {
        "<leader>gl",
        function()
          require("gitgraph").draw({}, { all = true, max_count = 5000 })
        end,
        desc = "GitGraph - Draw",
      },
    },
    opts = {
      git_cmd = "git",
      symbols = {
        merge_commit = "",
        commit = "",
        merge_commit_end = "",
        commit_end = "",
      },
      format = {
        timestamp = "%H:%M:%S %d-%m-%Y",
        fields = { "hash", "timestamp", "author", "branch_name", "tag" },
      },
      hooks = {
        -- Checkdiff on selected commit
        on_select_commit = function(commit)
          print("Selected commit:", commit.hash)
        end,
        -- Check diff between range
        on_select_range_commit = function(from, to)
          print("Selected range:", from.hash, to.hash)
        end,
      },
    },
  },
  {
    "m4xshen/hardtime.nvim",
    event = "LazyFile",
    dependencies = {
      "MunifTanjim/nui.nvim",
      {
        "rcarriga/nvim-notify",
        config = function()
          vim.notify = require("notify")
        end,
      },
    },
    opts = {
      max_count = 5,
      max_time = 500,
      restriction_mode = "block",
      allow_different_key = true,
      hint = true,
      notification = true,
      disable_mouse = true,
    },
  },
  {
    "toppair/reach.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    -- This guarantees the plugin won't load until you press <leader>rb or <leader>rm
    keys = {
      {
        "<leader>rb",
        function()
          require("reach").buffers({
            handle = "auto",
            show_icons = true,
            show_current = false,
            show_modified = true,
          })
        end,
        desc = "Reach: Open Buffers",
      },
      {
        "<leader>rm",
        function()
          require("reach").marks({})
        end,
        desc = "Reach: Open Marks",
      },
    },
    opts = {
      notifications = true,
    },
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "LazyFile",
    opts = {
      enable = true,
      max_lines = 3, -- Limits the sticky header to 3 lines so it doesn't crowd your screen
      min_window_height = 0,
      line_numbers = true,
      multiline_threshold = 20, -- Maximum number of lines to show for a single context
      trim_scope = "outer", -- Discards outer context if max_lines is exceeded
      mode = "cursor", -- Calculates context based on where your cursor is
      separator = "-", -- Adds a clean visual separator line below the sticky header
      zindex = 20,
    },
    keys = {
      {
        "<leader>cx",
        function()
          require("treesitter-context").toggle()
        end,
        desc = "Toggle Treesitter Context",
      },
    },
  },
  {
    "mbbill/undotree",
    keys = { { "<leader>uu", vim.cmd.UndotreeToggle, desc = "Toggle UndoTree" } },
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = "LazyFile",
    config = function()
      local rainbow_delimiters = require("rainbow-delimiters")

      vim.g.rainbow_delimiters = {
        strategy = {
          [""] = rainbow_delimiters.strategy["global"],
          vim = rainbow_delimiters.strategy["local"],
        },
        query = {
          [""] = "rainbow-delimiters",
          lua = "rainbow-blocks",
        },
        highlight = {
          "RainbowDelimiterRed",
          "RainbowDelimiterYellow",
          "RainbowDelimiterBlue",
          "RainbowDelimiterOrange",
          "RainbowDelimiterGreen",
          "RainbowDelimiterViolet",
          "RainbowDelimiterCyan",
        },
      }
    end,
  },
  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("hlchunk").setup({})
    end,
  },
  {
    "rachartier/tiny-glimmer.nvim",
    event = "VeryLazy",
    priority = 10, -- Low priority to catch other plugins' keybindings
    config = function()
      require("tiny-glimmer").setup()
    end,
  },
}

return {
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
  { "github/copilot.vim", event = "InsertEnter" },
  {
    "karb94/neoscroll.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      -- All these keys are optional, but this is a nice default
      easing_function = "quintic", -- "linear", "quadratic", "cubic", "quintic"
      hide_cursor = true,
      stop_eof = true,
    },
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
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
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
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
  },
  {
    "sphamba/smear-cursor.nvim",
    event = "VeryLazy",

    opts = {
      cursor_color = "#d3869b",
      stiffness = 0.6,
      trailing_stiffness = 0.5,
      distance_stop_animating = 0.5,
      hide_target_hack = false,
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        enabled = true,
        preset = {
          header = [[
 █████      ███                  █████              █████     
▒▒███      ▒▒▒                  ▒▒███              ▒▒███      
 ▒███████  ████  █████████████   ▒███████   ██████  ▒███ █████
 ▒███▒▒███▒▒███ ▒▒███▒▒███▒▒███  ▒███▒▒███ ███▒▒███ ▒███▒▒███ 
 ▒███ ▒███ ▒███  ▒███ ▒███ ▒███  ▒███ ▒███▒███ ▒███ ▒██████▒  
 ▒███ ▒███ ▒███  ▒███ ▒███ ▒███  ▒███ ▒███▒███ ▒███ ▒███▒▒███ 
 ████████  █████ █████▒███ █████ ████████ ▒▒██████  ████ █████
▒▒▒▒▒▒▒▒  ▒▒▒▒▒ ▒▒▒▒▒ ▒▒▒ ▒▒▒▒▒ ▒▒▒▒▒▒▒▒   ▒▒▒▒▒▒  ▒▒▒▒ ▒▒▒▒▒ 
        ]],
        },
      },
    },
  },
  {
    "isakbm/gitgraph.nvim",
    -- Load on keypress to keep startup at 28ms 🚀
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
}

return {
  {
    "obsidian-nvim/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",

    dependencies = {
      "nvim-lua/plenary.nvim",
    },

    opts = {
      workspaces = {
        {
          name = "personal",
          path = "~/shared/nvim-vault/",
        },
      },

      notes_subdir = "notes",

      daily_notes = {
        folder = "daily",
        date_format = "%Y-%m-%d",
        alias_format = "%B %-d, %Y",
        default_tags = { "daily-notes" },
        template = nil,
      },

      templates = {
        folder = "templates",
        date_format = "%Y-%m-%d",
        time_format = "%H:%M",
      },

      completion = {
        blink = true,
        min_chars = 2,
      },

      picker = {
        name = "snacks.pick",
      },

      attachments = {
        img_folder = "attachments",
      },

      new_notes_location = "notes_subdir",

      preferred_link_style = "wiki",

      ui = {
        enable = true,
      },
    },

    keys = {
      { "<leader>on", "<cmd>ObsidianNew<cr>", desc = "New Note" },
      { "<leader>ot", "<cmd>ObsidianToday<cr>", desc = "Today's Note" },
      { "<leader>oq", "<cmd>ObsidianQuickSwitch<cr>", desc = "Quick Switch" },
      { "<leader>os", "<cmd>ObsidianSearch<cr>", desc = "Search" },
      { "<leader>ob", "<cmd>ObsidianBacklinks<cr>", desc = "Backlinks" },
      { "<leader>oo", "<cmd>ObsidianOpen<cr>", desc = "Open in Obsidian" },
      { "<leader>ow", "<cmd>ObsidianWorkspace personal<cr>", desc = "Workspace" },
      { "<leader>ol", "<cmd>ObsidianLinks<cr>", desc = "Outgoing Links" },
      { "<leader>or", "<cmd>ObsidianRename<cr>", desc = "Rename Note" },
      { "<leader>op", "<cmd>ObsidianPasteImg<cr>", desc = "Paste Image" },
    },
  },
}

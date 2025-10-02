return {
  "pocco81/auto-save.nvim",
  event = { "InsertLeave", "TextChanged" },
  opts = {
    enabled = true,
    execution_message = {
      message = function() return "" end, -- disable save message
    },
    debounce_delay = 135,
    condition = function(buf)
      local fn = vim.fn
      local utils = require("auto-save.utils.data")
      return fn.getbufvar(buf, "&modifiable") == 1
        and utils.not_in(fn.getbufvar(buf, "&filetype"), { "gitcommit", "NvimTree" })
    end,
  },
}



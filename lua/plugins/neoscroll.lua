-- ~/.config/nvim/lua/plugins/neoscroll.lua
return {
  "karb94/neoscroll.nvim",
  opts = {
    -- All these keys are optional, but this is a nice default
    easing_function = "quadratic", -- "linear", "quadratic", "cubic", "quintic"
    hide_cursor = true,
    stop_eof = true,
  },
}

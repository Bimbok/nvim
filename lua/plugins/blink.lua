return {
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        menu = {
          border = "rounded",
          winblend = 0,
          draw = {
            columns = {
              { "kind_icon", "label", gap = 1 },
              { "kind" },
            },
          },
        },
        documentation = {
          auto_show = true,
          window = {
            border = "rounded",
            winblend = 0,
          },
        },
        ghost_text = {
          enabled = true,
        },
      },
      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "mono",
      },
      signature = {
        enabled = true,
        window = {
          border = "rounded",
          winblend = 0,
        },
      },
    },
  },
}

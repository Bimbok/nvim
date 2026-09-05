local palette = {
  bg = "#16130b",
  bg_alt = "#110e07",
  bg_muted = "#1f1b13",
  border = "#4c4639",
  muted = "#cfc5b4",
  fg = "#eae1d4",
  fg_alt = "#343027",
  surface = "#3d392f",
  red = "#9ec69c",
  orange = "#aecfac",
  yellow = "#d6c5a0",
  green = "#e5c36c",
  aqua = "#314d33",
  blue = "#594400",
  purple = "#51462a",
  brown = "#c7af7c",
  selection_bg = "#594400",
  selection_fg = "#ffdf92",
  keyword = "#745b0b",
  comment = "#989080",
  string = "#7fb37c",
}

require("base16-colorscheme").setup({
  base00 = palette.bg,
  base01 = palette.bg_alt,
  base02 = palette.bg_muted,
  base03 = palette.border,
  base04 = palette.muted,
  base05 = palette.fg,
  base06 = palette.fg_alt,
  base07 = palette.surface,
  base08 = palette.red,
  base09 = palette.orange,
  base0A = palette.yellow,
  base0B = palette.green,
  base0C = palette.aqua,
  base0D = palette.blue,
  base0E = palette.purple,
  base0F = palette.brown,
})

local function set_hl(groups, value)
  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, value)
  end
end

vim.g.colors_name = "matugen"

vim.api.nvim_set_hl(0, "Visual", {
  bg = palette.selection_bg,
  fg = palette.selection_fg,
})

set_hl({ "String", "TSString" }, {
  fg = palette.string,
})

set_hl({ "TSComment", "Comment" }, {
  fg = palette.comment,
  italic = true,
})

set_hl({ "TSMethod", "Method" }, {
  fg = palette.orange,
})

set_hl({ "TSFunction", "Function" }, {
  fg = palette.yellow,
})

set_hl({ "Keyword", "TSKeyword", "TSKeywordFunction", "TSRepeat" }, {
  fg = palette.keyword,
})

vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", { fg = palette.border, bg = "none" })
vim.api.nvim_set_hl(0, "FloatTitle", { fg = palette.fg, bg = "none", bold = true })

vim.api.nvim_set_hl(0, "NoiceCmdlinePopup", { bg = "none" })
vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { fg = palette.yellow, bg = "none" })
vim.api.nvim_set_hl(0, "NoiceCmdlineIcon", { fg = palette.yellow })

vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = palette.border, bg = "none" })
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = palette.yellow, bg = "none" })
vim.api.nvim_set_hl(0, "TelescopePromptTitle", { fg = palette.yellow, bg = "none", bold = true })

vim.api.nvim_set_hl(0, "BufferLineFill", { bg = "none" })
vim.api.nvim_set_hl(0, "BufferLineBackground", { bg = "none" })
vim.api.nvim_set_hl(0, "BufferLineSeparator", { fg = palette.red, bg = "none" })
vim.api.nvim_set_hl(0, "BufferLineSeparatorSelected", { fg = palette.border, bg = "none" })
vim.api.nvim_set_hl(0, "BufferLineBufferSelected", { bg = "none", fg = palette.fg, bold = true })
vim.api.nvim_set_hl(0, "BufferLineBufferVisible", { bg = "none", fg = palette.muted })

vim.api.nvim_set_hl(0, "BlinkCmpMenu", { bg = "none", fg = palette.fg })
vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { fg = palette.border, bg = "none" })
vim.api.nvim_set_hl(0, "BlinkCmpDoc", { bg = "none", fg = palette.fg })
vim.api.nvim_set_hl(0, "BlinkCmpDocBorder", { fg = palette.border, bg = "none" })
vim.api.nvim_set_hl(0, "BlinkCmpSignatureHelp", { bg = "none", fg = palette.fg })
vim.api.nvim_set_hl(0, "BlinkCmpSignatureHelpBorder", { fg = palette.border, bg = "none" })
vim.api.nvim_set_hl(0, "BlinkCmpKindFunction", { fg = palette.green, bg = "none" })
vim.api.nvim_set_hl(0, "BlinkCmpKindMethod", { fg = palette.green, bg = "none" })
vim.api.nvim_set_hl(0, "BlinkCmpKindVariable", { fg = palette.blue, bg = "none" })
vim.api.nvim_set_hl(0, "BlinkCmpKindKeyword", { fg = palette.red, bg = "none" })
vim.api.nvim_set_hl(0, "BlinkCmpKindClass", { fg = palette.yellow, bg = "none" })

vim.api.nvim_set_hl(0, "WinSeparator", { fg = palette.bg_muted })
vim.api.nvim_set_hl(0, "CursorLine", { bg = palette.bg_alt })
vim.api.nvim_set_hl(0, "MsgArea", { bg = "none" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })

vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = palette.orange, bold = true })
vim.api.nvim_set_hl(0, "SnacksDashboardDesc", { fg = palette.fg })
vim.api.nvim_set_hl(0, "SnacksDashboardKey", { fg = palette.yellow, bold = true })
vim.api.nvim_set_hl(0, "SnacksDashboardIcon", { fg = palette.green })
vim.api.nvim_set_hl(0, "SnacksDashboardSpecial", { fg = palette.blue })
vim.api.nvim_set_hl(0, "SnacksDashboardFooter", { fg = palette.muted, italic = true })

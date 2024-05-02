local M = {}

M.base_30 = {
  white = "#CAD3F5",
  darker_black = "#181926",
  black = "#24273A",
  black2 = "#363A4F",
  one_bg = "#494D64",
  one_bg2 = "#5B6078",
  one_bg3 = "#6E738D",
  grey = "#8087A2",
  grey_fg = "#939AB7",
  grey_fg2 = "#A5ADCB",
  light_grey = "#B8C0E0",
  red = "#ED8796",
  baby_pink = "#EE99A0",
  pink = "#F5BDE6",
  line = "#494D64",
  green = "#A6DA95",
  vibrant_green = "#8BD5CA",
  nord_blue = "#7DC4E4",
  blue = "#8AADF4",
  yellow = "#EED49F",
  sun = "#EED49F",
  purple = "#C6A0F6",
  dark_purple = "#C6A0F6",
  teal = "#91D7E3",
  orange = "#F5A97F",
  cyan = "#91D7E3",
  statusline_bg = "#363A4F",
  lightbg = "#363A4F",
  pmenu_bg = "#A6DA95",
  folder_bg = "#8AADF4",
  lavender = "#F4DBD6",
}

M.base_16 = {
  base00 = "#24273A",
  base01 = "#363A4F",
  base02 = "#494D64",
  base03 = "#5B6078",
  base04 = "#6E738D",
  base05 = "#8087A2",
  base06 = "#B8C0E0",
  base07 = "#CAD3F5",
  base08 = "#ED8796",
  base09 = "#F5A97F",
  base0A = "#EED49F",
  base0B = "#A6DA95",
  base0C = "#7DC4E4",
  base0D = "#8AADF4",
  base0E = "#C6A0F6",
  base0F = "#ED8796",
}

M.polish_hl = {
  treesitter = {
    ["@variable"] = { fg = M.base_30.lavender },
    ["@property"] = { fg = M.base_30.teal },
    ["@variable.builtin"] = { fg = M.base_30.red },
  },
}

M.type = "dark"

return M

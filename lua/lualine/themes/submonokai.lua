-- Lualine theme for SubMonokai
local colors = require("submonokai.palette")

local submonokai = {}

submonokai.normal = {
  a = { bg = colors.lualine_bg_muted, fg = colors.lualine_fg_dim, gui = "bold" },
  b = { bg = colors.lualine_bg_mid, fg = colors.white },
  c = { bg = colors.lualine_bg_dark, fg = colors.lualine_fg_muted },
}

submonokai.insert = {
  a = { bg = colors.lualine_yellow, fg = colors.lualine_bg_mid, gui = "bold" },
  b = { bg = colors.lualine_bg_mid, fg = colors.lualine_yellow },
  c = { bg = colors.lualine_bg_dark, fg = colors.lualine_fg_muted },
}

submonokai.visual = {
  a = { bg = colors.red, fg = colors.lualine_bg_mid, gui = "bold" },
  b = { bg = colors.lualine_bg_mid, fg = colors.red },
  c = { bg = colors.lualine_bg_dark, fg = colors.lualine_fg_muted },
}

submonokai.replace = {
  a = { bg = colors.lualine_blue, fg = colors.lualine_bg_mid, gui = "bold" },
  b = { bg = colors.lualine_bg_mid, fg = colors.lualine_blue },
  c = { bg = colors.lualine_bg_dark, fg = colors.lualine_fg_muted },
}

submonokai.command = {
  a = { bg = colors.white, fg = colors.lualine_bg_mid, gui = "bold" },
  b = { bg = colors.lualine_bg_mid, fg = colors.white },
  c = { bg = colors.lualine_bg_dark, fg = colors.lualine_fg_muted },
}

submonokai.terminal = {
  a = { bg = colors.white, fg = colors.lualine_bg_mid, gui = "bold" },
  b = { bg = colors.lualine_bg_mid, fg = colors.white },
  c = { bg = colors.lualine_bg_dark, fg = colors.lualine_fg_muted },
}

submonokai.inactive = {
  a = { bg = colors.lualine_bg_muted, fg = colors.lualine_fg_dim, gui = "bold" },
  b = { bg = colors.lualine_bg_mid, fg = colors.lualine_fg_muted },
  c = { bg = colors.lualine_bg_dark, fg = colors.lualine_fg_muted },
}

return submonokai

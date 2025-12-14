-- SubMonokai color palette
-- Based on Sublime Text's Monokai theme

return {
  -- Base colors
  bg = "#272822",
  fg = "#F8F8F2",
  cursor = "#383830",
  selection = "#49483E",
  comment = "#75715E",
  sidebar = "#171714",

  -- Accent colors
  red = "#ED3A2C",
  orange = "#FF9800",
  yellow = "#E6DC6D",
  magenta = "#FB2B71",
  green = "#B3E435",
  cyan = "#00DFF3",
  blue = "#0097F3",
  white = "#F8F8F2",
  grey = "#808080",
  black = "#1D1E19",

  -- Extended palette for UI
  gutter_fg = "#75715E",
  nontext = "#49483E",
  cursorline = "#383830",
  linenr = "#75715E",
  visual = "#49483E",
  search = "#E6DC6D",
  statusline = "#171714",
  menu_bg = "#272822",
  menu_sel = "#49483E",
  fold = "#383830",
  split = "#1D1E19",

  -- Diagnostics
  diag_error = "#ED3A2C",
  diag_warn = "#FF9800",
  diag_info = "#00DFF3",
  diag_hint = "#0097F3",

  -- Lualine colors
  lualine_bg_dark = "#191916",     -- section c background
  lualine_bg_mid = "#2a2c25",      -- section b background
  lualine_bg_muted = "#504f44",    -- normal/inactive section a background
  lualine_fg_muted = "#7d7c71",    -- normal/inactive section b foreground
  lualine_fg_dim = "#9d9f98",      -- normal/inactive section a foreground
  lualine_yellow = "#fdf277",      -- insert mode accent
  lualine_pink = "#ff2f7c",        -- visual mode accent
  lualine_blue = "#00a6ff",        -- replace mode accent

  -- Terminal colors (ANSI 0-15)
  term_black = "#1D1E19",        -- palette 0
  term_red = "#ED3A2C",          -- palette 1
  term_green = "#E6DC6D",        -- palette 2
  term_yellow = "#FF9800",       -- palette 3
  term_blue = "#0097F3",         -- palette 4
  term_magenta = "#FB2B71",      -- palette 5
  term_cyan = "#00DFF3",         -- palette 6
  term_white = "#F6EDEE",        -- palette 7
  term_bright_black = "#E0D75A", -- palette 8
  term_bright_red = "#ED3A2C",   -- palette 9
  term_bright_green = "#E6DC6D", -- palette 10
  term_bright_yellow = "#FF9800",-- palette 11
  term_bright_blue = "#0097F3",  -- palette 12
  term_bright_magenta = "#FB2B71",-- palette 13
  term_bright_cyan = "#00DFF3",  -- palette 14
  term_bright_white = "#F6EDEE", -- palette 15 (using same as 7)
}

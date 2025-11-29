local M = {}

local TRANSPARENTS = {
  "Normal",
  "SignColumn",
  "NvimTreeNormal",
  "NvimTreeVertSplit",
}

local function apply_term_colors(colors)
  vim.g.terminal_color_0 = colors.black
  vim.g.terminal_color_1 = colors.red
  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_3 = colors.yellow
  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_5 = colors.magenta
  vim.g.terminal_color_6 = colors.cyan
  vim.g.terminal_color_7 = colors.white
  vim.g.terminal_color_8 = colors.grey
  vim.g.terminal_color_9 = colors.bright_red
  vim.g.terminal_color_10 = colors.bright_green
  vim.g.terminal_color_11 = colors.bright_yellow
  vim.g.terminal_color_12 = colors.bright_blue
  vim.g.terminal_color_13 = colors.bright_magenta
  vim.g.terminal_color_14 = colors.bright_cyan
  vim.g.terminal_color_15 = colors.bright_white
  vim.g.terminal_color_background = colors.bg
  vim.g.terminal_color_foreground = colors.fg
end

local function apply(opts)
  local colors = require("submonokai.palette")
  apply_term_colors(colors)
  local groups = require("submonokai.groups").setup()

  if opts.transparent then
    for _, group in ipairs(TRANSPARENTS) do
      groups[group].bg = nil
    end
  end

  if not opts.italic_comments then
    if groups["Comment"] then
      groups["Comment"].italic = nil
    end
    if groups["@comment"] then
      groups["@comment"].italic = nil
    end
    if groups["SpecialComment"] then
      groups["SpecialComment"].italic = nil
    end
  end

  for group, setting in pairs(groups) do
    vim.api.nvim_set_hl(0, group, setting)
  end
end

M.opts = {
  italic_comments = true,
  transparent = false,
}

M.setup = function(opts)
  M.opts = vim.tbl_deep_extend("force", M.opts, opts or {})
end

M.load = function()
  if vim.fn.has("nvim-0.8") ~= 1 then
    vim.notify("submonokai: requires neovim 0.8 or higher")
    return
  end

  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "submonokai"

  apply(M.opts)
end

return M

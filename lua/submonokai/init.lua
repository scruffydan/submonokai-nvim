local M = {}

local TRANSPARENTS = {
  "Normal",
  "SignColumn",
  "NvimTreeNormal",
  "NvimTreeVertSplit",
}

local function apply_term_colors(colors)
  vim.g.terminal_color_0 = colors.term_black
  vim.g.terminal_color_1 = colors.term_red
  vim.g.terminal_color_2 = colors.term_green
  vim.g.terminal_color_3 = colors.term_yellow
  vim.g.terminal_color_4 = colors.term_blue
  vim.g.terminal_color_5 = colors.term_magenta
  vim.g.terminal_color_6 = colors.term_cyan
  vim.g.terminal_color_7 = colors.term_white
  vim.g.terminal_color_8 = colors.term_bright_black
  vim.g.terminal_color_9 = colors.term_bright_red
  vim.g.terminal_color_10 = colors.term_bright_green
  vim.g.terminal_color_11 = colors.term_bright_yellow
  vim.g.terminal_color_12 = colors.term_bright_blue
  vim.g.terminal_color_13 = colors.term_bright_magenta
  vim.g.terminal_color_14 = colors.term_bright_cyan
  vim.g.terminal_color_15 = colors.term_bright_white
  vim.g.terminal_color_background = colors.bg
  vim.g.terminal_color_foreground = colors.fg
end

local function apply(opts, colors)
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

local function setup_autocmds(colors)
  local augroup = vim.api.nvim_create_augroup("Submonokai", { clear = true })

  -- Yank highlight
  vim.api.nvim_create_autocmd('TextYankPost', {
    group = augroup,
    pattern = '*',
    callback = function()
      vim.highlight.on_yank({
        higroup = 'YankHighlight',
        timeout = 200,
      })
    end,
  })

  -- Dim background when tmux pane loses focus
  -- Requires `set -g focus-events on` in tmux.conf
  vim.api.nvim_create_autocmd('FocusLost', {
    group = augroup,
    pattern = '*',
    callback = function()
      vim.api.nvim_set_hl(0, 'Normal', { fg = colors.fg, bg = colors.black })
    end,
  })

  -- Restore background when tmux pane gains focus
  vim.api.nvim_create_autocmd('FocusGained', {
    group = augroup,
    pattern = '*',
    callback = function()
      vim.api.nvim_set_hl(0, 'Normal', { fg = colors.fg, bg = colors.bg })
    end,
  })

  -- Dim cursor line in insert mode
  vim.api.nvim_create_autocmd('InsertEnter', {
    group = augroup,
    pattern = '*',
    callback = function()
      vim.api.nvim_set_hl(0, 'CursorLine', { bg = colors.black })
    end,
  })

  -- Restore cursor line when leaving insert mode
  vim.api.nvim_create_autocmd('InsertLeave', {
    group = augroup,
    pattern = '*',
    callback = function()
      vim.api.nvim_set_hl(0, 'CursorLine', { bg = colors.cursorline })
    end,
  })
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

  local colors = require("submonokai.palette")
  apply(M.opts, colors)
  setup_autocmds(colors)
end

return M

local c = require("submonokai.palette")

local normal = {
  a = { fg = c.black, bg = c.green, gui = "bold" },
  b = { fg = c.fg, bg = c.selection },
  c = { fg = c.fg, bg = c.statusline },
}

local insert = {
  a = { fg = c.black, bg = c.yellow, gui = "bold" },
  b = { fg = c.fg, bg = c.selection },
}

local visual = {
  a = { fg = c.black, bg = c.magenta, gui = "bold" },
  b = { fg = c.fg, bg = c.selection },
}

local replace = {
  a = { fg = c.black, bg = c.red, gui = "bold" },
  b = { fg = c.fg, bg = c.selection },
}

local command = {
  a = { fg = c.black, bg = c.cyan, gui = "bold" },
  b = { fg = c.fg, bg = c.selection },
}

local inactive = {
  a = { fg = c.comment, bg = c.statusline, gui = "bold" },
  b = { fg = c.comment, bg = c.statusline },
  c = { fg = c.comment, bg = c.statusline },
}

return {
  normal = normal,
  insert = insert,
  visual = visual,
  replace = replace,
  command = command,
  inactive = inactive,
}

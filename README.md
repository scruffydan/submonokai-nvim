# SubMonokai

A Monokai color scheme for Neovim, inspired by Sublime Text's default Monokai theme.

## Requirements

- Neovim >= 0.8
- `termguicolors` enabled
- Treesitter (recommended for best syntax highlighting)

## Installation

### lazy.nvim

```lua
{
  "scruffydan/submonokai-nvim",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("submonokai")
  end,
}
```

### packer.nvim

```lua
use {
  "scruffydan/submonokai-nvim",
  config = function()
    vim.cmd.colorscheme("submonokai")
  end
}
```

## Configuration

```lua
require("submonokai").setup({
  italic_comments = true,  -- default: true
  transparent = false,     -- default: false
})
vim.cmd.colorscheme("submonokai")
```

## Features

- **Yank highlighting** - Visual feedback when yanking text
- **Focus dimming** - Background dims when tmux pane loses focus (requires `set -g focus-events on` in tmux.conf)
- **Insert mode cursor line** - Cursor line changes color in insert mode for another visual indicator of location
- **Inactive window dimming** - Non-focused windows have a slightly dimmed background
- **Terminal colors** - Full ANSI 16-color palette for terminal buffers

## Lualine

A matching Lualine theme is included:

```lua
require("lualine").setup({
  options = {
    theme = "submonokai",
  },
})
```

## Color Palette

| Color      | Hex       | Usage                              |
|------------|-----------|-------------------------------------|
| Background | `#272822` | Editor background                   |
| Foreground | `#F8F8F2` | Default text                        |
| Red        | `#ED3A2C` | Control flow (if/for/return), errors |
| Magenta    | `#FB2B71` | Operators, tags, exceptions         |
| Green      | `#B3E435` | Available in palette                |
| Yellow     | `#E6DC6D` | Strings, functions, attributes      |
| Cyan       | `#00DFF3` | Keywords, constants, builtins       |
| Orange     | `#FF9800` | Types, parameters, warnings         |
| Blue       | `#0097F3` | Numbers, labels                     |
| Grey       | `#75715E` | Comments                            |
| Black      | `#1D1E19` | Gutter, sidebar backgrounds         |

## Plugin Support

- Treesitter (with language-specific highlights)
- LSP semantic tokens
- nvim-cmp
- Telescope
- NvimTree
- GitSigns
- Indent Blankline
- Which-key
- Lazy.nvim
- Mason
- Neogit
- Lualine


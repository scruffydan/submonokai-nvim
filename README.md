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
  "scruffydan/submonokai-vim",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("submonokai")
  end,
}
```

### packer.nvim

```lua
use {
  "scruffydan/submonokai-vim",
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

## Lualine

```lua
require("lualine").setup({
  options = { theme = require("submonokai.lualine") }
})
```

## Color Palette

| Color      | Hex       | Usage                           |
|------------|-----------|----------------------------------|
| Background | `#272822` | Editor background               |
| Foreground | `#F8F8F2` | Default text                    |
| Magenta    | `#FB2B71` | Control flow (if, for, return)  |
| Green      | `#B3E435` | Functions                       |
| Yellow     | `#E6DC6D` | Strings                         |
| Cyan       | `#00DFF3` | Keywords, types, constants      |
| Orange     | `#FF9800` | Variables, parameters           |
| Grey       | `#75715E` | Comments                        |

## Plugin Support

- Treesitter
- LSP semantic tokens
- nvim-cmp
- Telescope
- NvimTree
- GitSigns
- Indent Blankline
- Which-key
- Lazy.nvim
- Mason

## License

MIT

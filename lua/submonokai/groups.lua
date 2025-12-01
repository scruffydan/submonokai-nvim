local M = {}

local c = require("submonokai.palette")

M.setup = function()
  return {
    -- Editor UI
    Normal = { fg = c.fg, bg = c.bg },
    NormalFloat = { fg = c.fg, bg = c.bg },
    Cursor = { fg = c.bg, bg = c.fg },
    CursorLine = { bg = c.cursorline },
    CursorLineNr = { fg = c.yellow },
    CursorColumn = { bg = c.cursorline },
    ColorColumn = { bg = c.cursorline },
    LineNr = { fg = c.linenr, bg = c.black },
    SignColumn = { bg = c.black },
    VertSplit = { fg = c.split },
    WinSeparator = { fg = c.split },
    Folded = { fg = c.comment, bg = c.fold },
    FoldColumn = { fg = c.comment },
    NonText = { fg = c.nontext },
    SpecialKey = { fg = c.orange },
    EndOfBuffer = { fg = c.bg },

    -- Search
    Search = { fg = c.black, bg = c.yellow },
    IncSearch = { fg = c.black, bg = c.orange },
    CurSearch = { fg = c.black, bg = c.orange },

    -- Selection
    Visual = { bg = c.selection },
    VisualNOS = { bg = c.selection },

    -- Popup menu
    Pmenu = { fg = c.fg, bg = c.menu_bg },
    PmenuSel = { fg = c.fg, bg = c.menu_sel },
    PmenuSbar = { bg = c.menu_bg },
    PmenuThumb = { bg = c.selection },

    -- Status/Tab line
    StatusLine = { fg = c.fg, bg = c.statusline },
    StatusLineNC = { fg = c.comment, bg = c.statusline },
    TabLine = { fg = c.comment, bg = c.statusline },
    TabLineSel = { fg = c.fg, bg = c.bg },
    TabLineFill = { bg = c.statusline },
    WildMenu = { fg = c.black, bg = c.yellow },

    -- Messages
    ErrorMsg = { fg = c.red },
    WarningMsg = { fg = c.magenta },
    MoreMsg = { fg = c.green },
    ModeMsg = { fg = c.yellow, bold = true },
    Question = { fg = c.green },

    -- Spelling
    SpellBad = { undercurl = true, sp = c.red },
    SpellCap = { undercurl = true, sp = c.blue },
    SpellLocal = { undercurl = true, sp = c.cyan },
    SpellRare = { undercurl = true, sp = c.magenta },

    -- Matching
    MatchParen = { fg = c.fg, bg = c.selection, bold = true },

    -- Diff
    DiffAdd = { fg = c.green, bg = c.bg },
    DiffChange = { fg = c.orange, bg = c.bg },
    DiffDelete = { fg = c.red, bg = c.bg },
    DiffText = { fg = c.yellow, bg = c.selection },
    diffAdded = { fg = c.green },
    diffRemoved = { fg = c.red },
    diffChanged = { fg = c.orange },
    diffFile = { fg = c.cyan },
    diffNewFile = { fg = c.green },
    diffOldFile = { fg = c.red },

    -- Misc
    Directory = { fg = c.cyan },
    Title = { fg = c.magenta, bold = true },
    Conceal = { fg = c.comment },
    FloatBorder = { fg = c.grey },

    -- QuickFix/Location Lists
    QuickFixLine = { bg = c.selection },
    qfLineNr = { fg = c.yellow },
    qfFileName = { fg = c.cyan },

    -- Window/Buffer Management
    WinBar = { fg = c.fg, bg = c.bg },
    WinBarNC = { fg = c.comment, bg = c.bg },

    -- Syntax (simplified - 5 main colors)
    Comment = { fg = c.comment, italic = true },
    Constant = { fg = c.cyan },
    String = { fg = c.yellow },
    Character = { fg = c.yellow },
    Number = { fg = c.blue },
    Boolean = { fg = c.cyan },
    Float = { fg = c.blue },
    Identifier = { fg = c.fg },
    Function = { fg = c.green },
    Statement = { fg = c.magenta },
    Conditional = { fg = c.magenta },
    Repeat = { fg = c.magenta },
    Label = { fg = c.blue },
    Operator = { fg = c.magenta },
    Keyword = { fg = c.cyan },
    Exception = { fg = c.magenta },
    PreProc = { fg = c.cyan },
    Include = { fg = c.cyan },
    Define = { fg = c.cyan },
    Macro = { fg = c.cyan },
    PreCondit = { fg = c.cyan },
    Type = { fg = c.orange },
    StorageClass = { fg = c.cyan },
    Structure = { fg = c.white },
    Typedef = { fg = c.cyan },
    Special = { fg = c.magenta },
    SpecialChar = { fg = c.magenta },
    Tag = { fg = c.magenta },
    Delimiter = { fg = c.fg },
    SpecialComment = { fg = c.comment, italic = true },
    Debug = { fg = c.red },
    Underlined = { underline = true },
    Ignore = { fg = c.comment },
    Error = { fg = c.red },
    Todo = { fg = c.orange, bold = true },

    -- TreeSitter highlights (simplified)
    ["@comment"] = { fg = c.comment, italic = true },
    ["@punctuation.delimiter"] = { fg = c.fg },
    ["@punctuation.bracket"] = { fg = c.fg },
    ["@punctuation.special"] = { fg = c.fg },

    ["@constant"] = { fg = c.cyan },
    ["@constant.builtin"] = { link = "@constant" },
    ["@constant.macro"] = { link = "@constant" },
    ["@string"] = { fg = c.yellow },
    ["@string.regex"] = { fg = c.orange },
    ["@string.escape"] = { fg = c.orange },
    ["@string.special"] = { fg = c.orange },
    ["@string.documentation"] = { fg = c.comment },
    ["@character"] = { link = "@string" },
    ["@number"] = { fg = c.blue },
    ["@boolean"] = { link = "@constant" },
    ["@float"] = { link = "@number" },

    ["@function"] = { fg = c.green },
    ["@function.builtin"] = { fg = c.cyan },
    ["@function.macro"] = { link = "@function" },
    ["@function.call"] = { link = "@function" },
    ["@method"] = { link = "@function" },
    ["@method.call"] = { link = "@function" },
    ["@constructor"] = { fg = c.cyan },
    ["@parameter"] = { fg = c.orange },

    ["@keyword"] = { fg = c.cyan },
    ["@keyword.function"] = { link = "@keyword" },
    ["@keyword.operator"] = { fg = c.magenta },
    ["@keyword.return"] = { link = "@keyword.operator" },
    ["@keyword.conditional"] = { link = "@keyword.operator" },
    ["@conditional"] = { link = "@keyword.operator" },
    ["@repeat"] = { link = "@keyword.operator" },
    ["@label"] = { fg = c.blue },
    ["@include"] = { fg = c.cyan },
    ["@exception"] = { fg = c.magenta },
    ["@operator"] = { fg = c.magenta },

    ["@type"] = { fg = c.orange },
    ["@type.builtin"] = { link = "@type" },
    ["@type.definition"] = { link = "@type" },
    ["@type.qualifier"] = { link = "@type" },
    ["@storageclass"] = { fg = c.cyan },
    ["@structure"] = { fg = c.cyan },
    ["@namespace"] = { fg = c.yellow },
    ["@annotation"] = { fg = c.cyan },
    ["@attribute"] = { fg = c.green },

    ["@variable"] = { fg = c.fg },
    ["@variable.builtin"] = { fg = c.magenta },
    ["@field"] = { link = "@variable" },
    ["@property"] = { link = "@variable" },

    -- Markup (newer TreeSitter naming convention)
    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },
    ["@markup.heading"] = { fg = c.orange, bold = true },
    ["@markup.heading.1"] = { link = "@markup.heading" },
    ["@markup.heading.2"] = { link = "@markup.heading" },
    ["@markup.heading.3"] = { link = "@markup.heading" },
    ["@markup.heading.4"] = { link = "@markup.heading" },
    ["@markup.heading.5"] = { link = "@markup.heading" },
    ["@markup.heading.6"] = { link = "@markup.heading" },
    ["@markup.link"] = { fg = c.cyan, underline = true },
    ["@markup.link.url"] = { link = "@markup.link" },
    ["@markup.link.label"] = { fg = c.cyan },
    ["@markup.heading.1.markdown_inline"] = { fg = c.cyan, bold = true },
    ["@markup.heading.2.markdown_inline"] = { link = "@markup.heading.1.markdown_inline" },
    ["@markup.heading.3.markdown_inline"] = { link = "@markup.heading.1.markdown_inline" },
    ["@markup.heading.4.markdown_inline"] = { link = "@markup.heading.1.markdown_inline" },
    ["@markup.heading.5.markdown_inline"] = { link = "@markup.heading.1.markdown_inline" },
    ["@markup.heading.6.markdown_inline"] = { link = "@markup.heading.1.markdown_inline" },
    ["@markup.list"] = { fg = c.magenta },
    ["@markup.list.checked"] = { fg = c.green },
    ["@markup.list.unchecked"] = { fg = c.comment },
    ["@markup.quote"] = { fg = c.comment, italic = true },
    ["@markup.raw"] = { fg = c.yellow },
    ["@markup.raw.block"] = { link = "@markup.raw" },

    -- Older @text.* naming (link to @markup.*)
    ["@text"] = { fg = c.fg },
    ["@text.strong"] = { link = "@markup.strong" },
    ["@text.emphasis"] = { link = "@markup.italic" },
    ["@text.underline"] = { link = "@markup.underline" },
    ["@text.strike"] = { link = "@markup.strikethrough" },
    ["@text.title"] = { link = "@markup.heading" },
    ["@text.literal"] = { link = "@markup.raw" },
    ["@text.uri"] = { link = "@markup.link.url" },
    ["@text.reference"] = { link = "@markup.link" },
    ["@text.todo"] = { fg = c.orange, bold = true },
    ["@text.note"] = { fg = c.cyan, bold = true },
    ["@text.warning"] = { fg = c.orange, bold = true },
    ["@text.danger"] = { fg = c.red, bold = true },

    ["@tag"] = { fg = c.magenta },
    ["@tag.attribute"] = { fg = c.green },
    ["@tag.delimiter"] = { fg = c.fg },

    -- Language-specific TreeSitter highlights
    -- Python
    ["@attribute.python"] = { fg = c.green, italic = true },
    ["@attribute.builtin.python"] = { link = "@attribute.python" },

    -- Lua
    ["@keyword.luadoc"] = { fg = c.magenta, italic = true },

    -- C/C++
    ["@preproc"] = { fg = c.comment },
    ["@preproc.c"] = { fg = c.magenta },
    ["@preproc.cpp"] = { link = "@preproc.c" },

    -- JSON/JSONC
    ["@label.json"] = { fg = c.magenta },
    ["@label.jsonc"] = { link = "@label.json" },

    -- YAML
    ["@field.yaml"] = { fg = c.magenta },

    -- Go/C labels
    ["@label.c"] = { fg = c.cyan, italic = true },
    ["@label.go"] = { link = "@label.c" },

    -- TypeScript/JavaScript
    ["@keyword.export"] = { fg = c.magenta },
    ["@keyword.import"] = { link = "@keyword.export" },
    ["@keyword.coroutine"] = { link = "@keyword.export" },

    -- HTML/JSX
    ["@tag.builtin"] = { link = "@tag" },

    -- Additional TreeSitter groups
    ["@character.special"] = { fg = c.magenta },
    ["@parameter.reference"] = { fg = c.fg },
    ["@text.environment"] = { fg = c.magenta },
    ["@text.environment.name"] = { fg = c.cyan },
    ["@text.math"] = { fg = c.fg },
    ["@symbol"] = { fg = c.blue },
    ["@define"] = { fg = c.magenta },
    ["@todo"] = { fg = c.orange, bold = true },
    ["@none"] = {},

    -- LSP Semantic tokens
    -- Types
    ["@lsp.type.class"] = { fg = c.orange },
    ["@lsp.type.decorator"] = { fg = c.green },
    ["@lsp.type.enum"] = { fg = c.orange },
    ["@lsp.type.enumMember"] = { fg = c.cyan },
    ["@lsp.type.interface"] = { fg = c.orange },
    ["@lsp.type.namespace"] = { fg = c.yellow },
    ["@lsp.type.parameter"] = { fg = c.orange },
    ["@lsp.type.property"] = { fg = c.fg },
    ["@lsp.type.struct"] = { fg = c.orange },
    ["@lsp.type.type"] = { fg = c.orange },
    ["@lsp.type.typeParameter"] = { fg = c.orange },
    ["@lsp.type.variable"] = { fg = c.fg },

    -- Functions and Methods
    ["@lsp.type.function"] = { fg = c.green },
    ["@lsp.type.method"] = { fg = c.green },
    ["@lsp.type.macro"] = { fg = c.cyan },

    -- Keywords and Language Constructs
    ["@lsp.type.keyword"] = { fg = c.cyan },
    ["@lsp.type.comment"] = { fg = c.comment, italic = true },
    ["@lsp.type.operator"] = { fg = c.magenta },
    ["@lsp.type.modifier"] = { fg = c.cyan },

    -- Literals
    ["@lsp.type.string"] = { fg = c.yellow },
    ["@lsp.type.number"] = { fg = c.blue },
    ["@lsp.type.boolean"] = { fg = c.cyan },
    ["@lsp.type.regexp"] = { fg = c.orange },

    -- Additional LSP Types
    ["@lsp.type.event"] = { fg = c.orange },
    ["@lsp.type.formatSpecifier"] = { fg = c.magenta },
    ["@lsp.type.escapeSequence"] = { fg = c.magenta },
    ["@lsp.type.label"] = { fg = c.cyan },
    ["@lsp.type.selfKeyword"] = { fg = c.magenta },
    ["@lsp.type.selfParameter"] = { fg = c.magenta },

    -- LSP Modifiers
    ["@lsp.mod.declaration"] = {},
    ["@lsp.mod.definition"] = {},
    ["@lsp.mod.readonly"] = {},
    ["@lsp.mod.static"] = {},
    ["@lsp.mod.deprecated"] = { strikethrough = true },
    ["@lsp.mod.abstract"] = {},
    ["@lsp.mod.async"] = {},
    ["@lsp.mod.modification"] = {},
    ["@lsp.mod.documentation"] = {},
    ["@lsp.mod.defaultLibrary"] = {},
    ["@lsp.mod.mutable"] = { underline = true },
    ["@lsp.mod.unsafe"] = { fg = c.red, bold = true },

    -- Type-Modifier Combinations (for built-in/standard library items)
    ["@lsp.typemod.function.defaultLibrary"] = { fg = c.cyan },
    ["@lsp.typemod.method.defaultLibrary"] = { fg = c.cyan },
    ["@lsp.typemod.variable.defaultLibrary"] = { fg = c.cyan },
    ["@lsp.typemod.variable.readonly"] = { fg = c.cyan },
    ["@lsp.typemod.variable.constant"] = { fg = c.cyan },
    ["@lsp.typemod.property.readonly"] = { fg = c.cyan },
    ["@lsp.typemod.class.defaultLibrary"] = { fg = c.orange },
    ["@lsp.typemod.type.defaultLibrary"] = { fg = c.orange },
    ["@lsp.typemod.parameter.readonly"] = { fg = c.orange },

    -- Language-specific semantic tokens
    ["@lsp.typemod.function.builtin"] = { fg = c.cyan },
    ["@lsp.typemod.variable.global"] = { fg = c.fg },
    ["@lsp.typemod.variable.static"] = { fg = c.cyan },
    ["@lsp.typemod.method.static"] = { fg = c.cyan },

    -- LSP References and Signatures
    LspReferenceText = { bg = c.selection, underline = true },
    LspReferenceRead = { link = "LspReferenceText" },
    LspReferenceWrite = { link = "LspReferenceText" },
    LspSignatureActiveParameter = { bg = c.selection },
    LspSignatureHintVirtualText = { fg = c.cyan, bold = true },
    LspInlayHint = { fg = c.comment, italic = true },

    -- Diagnostics
    DiagnosticError = { fg = c.diag_error },
    DiagnosticWarn = { fg = c.diag_warn },
    DiagnosticInfo = { fg = c.diag_info },
    DiagnosticHint = { fg = c.diag_hint },
    DiagnosticUnderlineError = { undercurl = true, sp = c.diag_error },
    DiagnosticUnderlineWarn = { undercurl = true, sp = c.diag_warn },
    DiagnosticUnderlineInfo = { undercurl = true, sp = c.diag_info },
    DiagnosticUnderlineHint = { undercurl = true, sp = c.diag_hint },
    DiagnosticSignError = { fg = c.diag_error },
    DiagnosticSignWarn = { fg = c.diag_warn },
    DiagnosticSignInfo = { fg = c.diag_info },
    DiagnosticSignHint = { fg = c.diag_hint },
    DiagnosticVirtualTextError = { fg = c.diag_error },
    DiagnosticVirtualTextWarn = { fg = c.diag_warn },
    DiagnosticVirtualTextInfo = { fg = c.diag_info },
    DiagnosticVirtualTextHint = { fg = c.diag_hint },
    DiagnosticFloatingError = { fg = c.diag_error },
    DiagnosticFloatingWarn = { fg = c.diag_warn },
    DiagnosticFloatingInfo = { fg = c.diag_info },
    DiagnosticFloatingHint = { fg = c.diag_hint },
    DiagnosticUnnecessary = { undercurl = true, sp = c.comment, italic = true },

    -- Git Signs
    GitSignsAdd = { fg = c.green },
    GitSignsChange = { fg = c.orange },
    GitSignsDelete = { fg = c.red },
    GitSignsAddLn = { fg = c.black, bg = c.green },
    GitSignsChangeLn = { fg = c.black, bg = c.orange },
    GitSignsDeleteLn = { fg = c.black, bg = c.red },
    GitSignsCurrentLineBlame = { fg = c.comment },

    -- NvimTree
    NvimTreeNormal = { fg = c.fg, bg = c.sidebar },
    NvimTreeRootFolder = { fg = c.magenta, bold = true },
    NvimTreeGitDirty = { fg = c.orange },
    NvimTreeGitNew = { fg = c.green },
    NvimTreeFolderIcon = { fg = c.cyan },
    NvimTreeIndentMarker = { fg = c.nontext },
    NvimTreeEmptyFolderName = { fg = c.comment },
    NvimTreeFolderName = { fg = c.fg },
    NvimTreeSpecialFile = { fg = c.cyan, underline = true },
    NvimTreeOpenedFolderName = { fg = c.fg },
    NvimTreeCursorLine = { bg = c.selection },
    NvimTreeVertSplit = { fg = c.sidebar, bg = c.sidebar },

    -- Telescope
    TelescopeNormal = { fg = c.fg, bg = c.bg },
    TelescopeBorder = { fg = c.grey },
    TelescopePromptPrefix = { fg = c.magenta },
    TelescopeSelectionCaret = { fg = c.magenta },
    TelescopeSelection = { bg = c.selection },
    TelescopeMatching = { fg = c.yellow, bold = true },

    -- nvim-cmp
    CmpItemAbbr = { fg = c.fg },
    CmpItemAbbrMatch = { fg = c.yellow, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.yellow },
    CmpItemKind = { fg = c.cyan },
    CmpItemMenu = { fg = c.comment },
    CmpItemKindMethod = { fg = c.green },
    CmpItemKindFunction = { fg = c.green },
    CmpItemKindConstructor = { fg = c.cyan },
    CmpItemKindVariable = { fg = c.fg },
    CmpItemKindClass = { fg = c.cyan },
    CmpItemKindInterface = { fg = c.cyan },
    CmpItemKindModule = { fg = c.fg },
    CmpItemKindProperty = { fg = c.fg },
    CmpItemKindKeyword = { fg = c.cyan },
    CmpItemKindText = { fg = c.fg },
    CmpItemKindSnippet = { fg = c.orange },
    CmpItemKindConstant = { fg = c.cyan },

    -- Indent Blankline
    IndentBlanklineChar = { fg = c.nontext },
    IndentBlanklineContextChar = { fg = c.comment },
    IblIndent = { fg = c.nontext },
    IblScope = { fg = c.comment },

    -- Which-key
    WhichKey = { fg = c.cyan },
    WhichKeyGroup = { fg = c.cyan },
    WhichKeyDesc = { fg = c.fg },
    WhichKeySeperator = { fg = c.comment },
    WhichKeyFloat = { bg = c.bg },

    -- Lazy.nvim
    LazyH1 = { fg = c.black, bg = c.cyan, bold = true },
    LazyButton = { fg = c.fg, bg = c.selection },
    LazyButtonActive = { fg = c.black, bg = c.green },
    LazySpecial = { fg = c.cyan },

    -- Mason
    MasonHeader = { fg = c.black, bg = c.cyan, bold = true },
    MasonHighlight = { fg = c.cyan },
    MasonHighlightBlock = { fg = c.black, bg = c.cyan },
    MasonHighlightBlockBold = { fg = c.black, bg = c.cyan, bold = true },
    MasonMuted = { fg = c.comment },
    MasonMutedBlock = { bg = c.selection },
  }
end

return M

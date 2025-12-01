local M = {}

local c = require("submonokai.palette")

M.setup = function()
  return {
    -- Editor UI
    Normal = { fg = c.fg, bg = c.bg },
    NormalFloat = { link = "Normal" },
    Cursor = { fg = c.bg, bg = c.fg },
    CursorLine = { bg = c.cursorline },
    CursorLineNr = { fg = c.yellow },
    CursorColumn = { link = "CursorLine" },
    ColorColumn = { link = "CursorLine" },
    LineNr = { fg = c.linenr, bg = c.black },
    SignColumn = { bg = c.black },
    VertSplit = { fg = c.split },
    WinSeparator = { link = "VertSplit" },
    Folded = { fg = c.comment, bg = c.fold },
    FoldColumn = { fg = c.comment },
    NonText = { fg = c.nontext },
    SpecialKey = { fg = c.orange },
    EndOfBuffer = { fg = c.bg },

    -- Search
    Search = { fg = c.black, bg = c.yellow },
    IncSearch = { fg = c.black, bg = c.orange },
    CurSearch = { link = "IncSearch" },

    -- Selection
    Visual = { bg = c.selection },
    VisualNOS = { link = "Visual" },

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
    MoreMsg = { fg = c.yellow },
    ModeMsg = { fg = c.yellow, bold = true },
    Question = { fg = c.yellow },

    -- Spelling
    SpellBad = { undercurl = true, sp = c.red },
    SpellCap = { undercurl = true, sp = c.blue },
    SpellLocal = { undercurl = true, sp = c.cyan },
    SpellRare = { undercurl = true, sp = c.magenta },

    -- Matching
    MatchParen = { fg = c.fg, bg = c.selection, bold = true },

    -- Diff
    DiffAdd = { fg = c.yellow, bg = c.bg },
    DiffChange = { fg = c.orange, bg = c.bg },
    DiffDelete = { fg = c.red, bg = c.bg },
    DiffText = { fg = c.yellow, bg = c.selection },
    diffAdded = { fg = c.yellow },
    diffRemoved = { link = "DiffDelete" },
    diffChanged = { link = "DiffChange" },
    diffFile = { fg = c.cyan },
    diffNewFile = { link = "diffAdded" },
    diffOldFile = { link = "DiffDelete" },

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
    WinBar = { link = "Normal" },
    WinBarNC = { fg = c.comment, bg = c.bg },

    -- Syntax (simplified - 5 main colors)
    Comment = { fg = c.comment, italic = true },
    Constant = { fg = c.cyan },
    String = { fg = c.yellow },
    Character = { link = "String" },
    Number = { fg = c.blue },
    Boolean = { link = "Constant" },
    Float = { link = "Number" },
    Identifier = { fg = c.fg },
    Function = { fg = c.yellow },
    Statement = { fg = c.magenta },
    Conditional = { link = "Statement" },
    Repeat = { link = "Statement" },
    Label = { fg = c.blue },
    Operator = { fg = c.magenta },
    Keyword = { fg = c.cyan },
    Exception = { link = "Statement" },
    PreProc = { fg = c.cyan },
    Include = { link = "PreProc" },
    Define = { link = "PreProc" },
    Macro = { link = "PreProc" },
    PreCondit = { link = "PreProc" },
    Type = { fg = c.orange },
    StorageClass = { link = "Keyword" },
    Structure = { fg = c.white },
    Typedef = { link = "Keyword" },
    Special = { fg = c.magenta },
    SpecialChar = { link = "Special" },
    Tag = { link = "Special" },
    Delimiter = { fg = c.fg },
    SpecialComment = { link = "Comment" },
    Debug = { fg = c.red },
    Underlined = { underline = true },
    Ignore = { link = "Comment" },
    Error = { fg = c.red },
    Todo = { fg = c.orange, bold = true },

    -- TreeSitter highlights (simplified)
    ["@comment"] = { fg = c.comment, italic = true },
    ["@punctuation.delimiter"] = { fg = c.fg },
    ["@punctuation.bracket"] = { link = "@punctuation.delimiter" },
    ["@punctuation.special"] = { link = "@punctuation.delimiter" },

    ["@constant"] = { fg = c.cyan },
    ["@constant.builtin"] = { link = "@constant" },
    ["@constant.macro"] = { link = "@constant" },
    ["@string"] = { fg = c.yellow },
    ["@string.regex"] = { fg = c.orange },
    ["@string.escape"] = { link = "@string.regex" },
    ["@string.special"] = { link = "@string.regex" },
    ["@string.documentation"] = { fg = c.comment },
    ["@character"] = { link = "@string" },
    ["@number"] = { fg = c.blue },
    ["@boolean"] = { link = "@constant" },
    ["@float"] = { link = "@number" },

    ["@function"] = { fg = c.yellow },
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
    ["@include"] = { link = "@keyword" },
    ["@exception"] = { fg = c.magenta },
    ["@operator"] = { fg = c.magenta },

    ["@type"] = { fg = c.orange },
    ["@type.builtin"] = { link = "@type" },
    ["@type.definition"] = { link = "@type" },
    ["@type.qualifier"] = { link = "@type" },
    ["@storageclass"] = { link = "@keyword" },
    ["@structure"] = { link = "@keyword" },
    ["@namespace"] = { fg = c.yellow },
    ["@annotation"] = { link = "@keyword" },
    ["@attribute"] = { fg = c.yellow },

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
    ["@markup.heading.marker"] = { fg = c.comment },
    ["@markup.italic.marker"] = { fg = c.comment },
    ["@markup.strong.marker"] = { fg = c.comment },
    ["@punctuation.special.markdown"] = { fg = c.comment },
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
    ["@markup.list.checked"] = { fg = c.yellow },
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
    ["@tag.attribute"] = { fg = c.yellow },
    ["@tag.delimiter"] = { fg = c.fg },

    -- Language-specific TreeSitter highlights
    -- Python
    ["@attribute.python"] = { fg = c.yellow, italic = true },
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
    ["@lsp.type.decorator"] = { fg = c.yellow },
    ["@lsp.type.enum"] = { link = "@lsp.type.class" },
    ["@lsp.type.enumMember"] = { fg = c.cyan },
    ["@lsp.type.interface"] = { link = "@lsp.type.class" },
    ["@lsp.type.namespace"] = { fg = c.yellow },
    ["@lsp.type.parameter"] = { fg = c.orange },
    ["@lsp.type.property"] = { fg = c.fg },
    ["@lsp.type.struct"] = { link = "@lsp.type.class" },
    ["@lsp.type.type"] = { link = "@lsp.type.class" },
    ["@lsp.type.typeParameter"] = { link = "@lsp.type.parameter" },
    ["@lsp.type.variable"] = { fg = c.fg },

    -- Functions and Methods
    ["@lsp.type.function"] = { fg = c.yellow },
    ["@lsp.type.method"] = { link = "@lsp.type.function" },
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
    ["@lsp.mod.deprecated"] = { strikethrough = true },
    ["@lsp.mod.mutable"] = { underline = true },
    ["@lsp.mod.unsafe"] = { fg = c.red, bold = true },

    -- Type-Modifier Combinations (for built-in/standard library items)
    ["@lsp.typemod.function.defaultLibrary"] = { fg = c.cyan },
    ["@lsp.typemod.method.defaultLibrary"] = { link = "@lsp.typemod.function.defaultLibrary" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@lsp.typemod.function.defaultLibrary" },
    ["@lsp.typemod.variable.readonly"] = { link = "@lsp.typemod.function.defaultLibrary" },
    ["@lsp.typemod.variable.constant"] = { link = "@lsp.typemod.function.defaultLibrary" },
    ["@lsp.typemod.property.readonly"] = { link = "@lsp.typemod.function.defaultLibrary" },
    ["@lsp.typemod.class.defaultLibrary"] = { link = "@lsp.type.class" },
    ["@lsp.typemod.type.defaultLibrary"] = { link = "@lsp.type.class" },
    ["@lsp.typemod.parameter.readonly"] = { link = "@lsp.type.parameter" },

    -- Language-specific semantic tokens
    ["@lsp.typemod.function.builtin"] = { link = "@lsp.typemod.function.defaultLibrary" },
    ["@lsp.typemod.variable.global"] = { fg = c.fg },
    ["@lsp.typemod.variable.static"] = { link = "@lsp.typemod.function.defaultLibrary" },
    ["@lsp.typemod.method.static"] = { link = "@lsp.typemod.function.defaultLibrary" },

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
    DiagnosticSignError = { link = "DiagnosticError" },
    DiagnosticSignWarn = { link = "DiagnosticWarn" },
    DiagnosticSignInfo = { link = "DiagnosticInfo" },
    DiagnosticSignHint = { link = "DiagnosticHint" },
    DiagnosticVirtualTextError = { link = "DiagnosticError" },
    DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },
    DiagnosticVirtualTextInfo = { link = "DiagnosticInfo" },
    DiagnosticVirtualTextHint = { link = "DiagnosticHint" },
    DiagnosticFloatingError = { link = "DiagnosticError" },
    DiagnosticFloatingWarn = { link = "DiagnosticWarn" },
    DiagnosticFloatingInfo = { link = "DiagnosticInfo" },
    DiagnosticFloatingHint = { link = "DiagnosticHint" },
    DiagnosticUnnecessary = { undercurl = true, sp = c.comment, italic = true },

    -- Git Signs
    GitSignsAdd = { fg = c.yellow },
    GitSignsChange = { fg = c.orange },
    GitSignsDelete = { fg = c.red },
    GitSignsAddLn = { fg = c.black, bg = c.yellow },
    GitSignsChangeLn = { fg = c.black, bg = c.orange },
    GitSignsDeleteLn = { fg = c.black, bg = c.red },
    GitSignsCurrentLineBlame = { fg = c.comment },

    -- NvimTree
    NvimTreeNormal = { fg = c.fg, bg = c.sidebar },
    NvimTreeRootFolder = { fg = c.magenta, bold = true },
    NvimTreeGitDirty = { fg = c.orange },
    NvimTreeGitNew = { fg = c.yellow },
    NvimTreeFolderIcon = { fg = c.cyan },
    NvimTreeIndentMarker = { fg = c.nontext },
    NvimTreeEmptyFolderName = { fg = c.comment },
    NvimTreeFolderName = { fg = c.fg },
    NvimTreeSpecialFile = { fg = c.cyan, underline = true },
    NvimTreeOpenedFolderName = { link = "NvimTreeFolderName" },
    NvimTreeCursorLine = { link = "Visual" },
    NvimTreeVertSplit = { fg = c.sidebar, bg = c.sidebar },

    -- Telescope
    TelescopeNormal = { link = "Normal" },
    TelescopeBorder = { fg = c.grey },
    TelescopePromptPrefix = { fg = c.magenta },
    TelescopeSelectionCaret = { link = "TelescopePromptPrefix" },
    TelescopeSelection = { link = "Visual" },
    TelescopeMatching = { fg = c.yellow, bold = true },

    -- nvim-cmp
    CmpItemAbbr = { fg = c.fg },
    CmpItemAbbrMatch = { fg = c.yellow, bold = true },
    CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" },
    CmpItemKind = { fg = c.cyan },
    CmpItemMenu = { fg = c.comment },
    CmpItemKindMethod = { fg = c.yellow },
    CmpItemKindFunction = { link = "CmpItemKindMethod" },
    CmpItemKindConstructor = { link = "CmpItemKind" },
    CmpItemKindVariable = { link = "CmpItemAbbr" },
    CmpItemKindClass = { link = "CmpItemKind" },
    CmpItemKindInterface = { link = "CmpItemKind" },
    CmpItemKindModule = { link = "CmpItemAbbr" },
    CmpItemKindProperty = { link = "CmpItemAbbr" },
    CmpItemKindKeyword = { link = "CmpItemKind" },
    CmpItemKindText = { link = "CmpItemAbbr" },
    CmpItemKindSnippet = { fg = c.orange },
    CmpItemKindConstant = { link = "CmpItemKind" },

    -- Indent Blankline (old and new plugin versions)
    IndentBlanklineChar = { fg = c.nontext },
    IndentBlanklineContextChar = { fg = c.comment },
    IblIndent = { link = "IndentBlanklineChar" },
    IblScope = { link = "IndentBlanklineContextChar" },

    -- Which-key
    WhichKey = { fg = c.cyan },
    WhichKeyGroup = { link = "WhichKey" },
    WhichKeyDesc = { fg = c.fg },
    WhichKeySeperator = { fg = c.comment },
    WhichKeyFloat = { bg = c.bg },

    -- Lazy.nvim
    LazyH1 = { fg = c.black, bg = c.cyan, bold = true },
    LazyButton = { fg = c.fg, bg = c.selection },
    LazyButtonActive = { fg = c.black, bg = c.yellow },
    LazySpecial = { fg = c.cyan },

    -- Mason
    MasonHeader = { link = "LazyH1" },
    MasonHighlight = { link = "LazySpecial" },
    MasonHighlightBlock = { fg = c.black, bg = c.cyan },
    MasonHighlightBlockBold = { link = "LazyH1" },
    MasonMuted = { fg = c.comment },
    MasonMutedBlock = { link = "Visual" },
  }
end

return M

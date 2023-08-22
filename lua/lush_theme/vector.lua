local lush      = require("lush")
local hsl       = lush.hsl

return lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- Normal { bg = hsl(220, 13, 18), fg = hsl(210, 2, 81) },                    -- Normal text
    Normal { bg = hsl(220, 13, 16), fg = hsl(210, 2, 81) },                    -- Normal text

    NormalFloat { bg = hsl(220, 13, 23), fg = Normal.fg },   -- Normal text in floating windows
    NormalNC { Normal },                            -- Normal text in non-current windows

    LineNr { fg = hsl(210, 18, 40), bg = Normal.bg },
    SignColumn { bg = LineNr.bg, fg = LineNr.fg },
    FoldColumn { SignColumn },
    ColorColumn { bg = NormalFloat.bg },

    Title { fg = hsl(213, 50, 61) }, -- titles for output from ":set all", ":autocmd" etc.
    Visual { bg = hsl(203, 70, 25) },

    Pmenu { bg = NormalFloat.bg.darken(5), fg = Normal.fg },
    PmenuSel { bg = Pmenu.bg.lighten(15), },
    PmenuKind { bg = Pmenu.bg, fg = Normal.fg },
    PmenuKindSel { bg = Pmenu.bg, fg = Normal.fg },
    PmenuExtra { bg = Pmenu.bg, fg = Normal.fg },
    PmenuExtraSel { bg = Pmenu.bg, fg = Normal.fg },
    PmenuSbar { bg = Pmenu.bg, fg = Normal.fg },
    PmenuThumb { bg = Pmenu.bg, fg = Normal.fg },

    Whitespace { fg = NormalFloat.bg.lighten(25) },
    NonText { fg = NormalFloat.bg.lighten(35) },   --eol highlighing
    Comment { fg = LineNr.fg.lighten(22), gui = "italic" },

    Search { bg = hsl(60, 80, 50), fg = Normal.bg },
    IncSearch { bg = Search.bg, fg = Normal.bg },
    CurSearch { Search },

    CursorLine { bg = Normal.bg.lighten(7) },
    CursorLineNr { bg = CursorLine.bg, fg = Search.bg.mix(LineNr.bg, 10), gui = "bold" },
    StatusLine { fg = Normal.fg, bg = NormalFloat.bg.lighten(5) },
    StatusLineNC { fg = Normal.fg, bg = StatusLine.bg.darken(10) },

    TabLineFill { bg = NormalFloat.bg },
    TabLineSel { fg = Normal.fg, bg = TabLineFill.bg.rotate(-10).lighten(10), gui = "bold" },
    TabLine { fg = Normal.fg, bg = TabLineFill.bg },

    Folded { bg = Pmenu.bg, fg = Normal.fg.darken(10), gui = "italic" },
    DiffAdd { bg = hsl(120, 40, 20) },    -- diff mode: Added line |diff.txt|
    DiffChange { bg = NormalFloat.bg },    -- diff mode: Changed line |diff.txt|
    DiffDelete { bg = hsl(0, 40, 20) },   -- diff mode: Deleted line |diff.txt|
    DiffText { bg = Search.bg },              -- diff mode: Changed text within a changed line |diff.txt|

    Conceal {},
    Directory { fg = hsl(212, 100, 75) },   -- directory names (and other special names in listings)

    VertSplit { fg = Normal.bg.lighten(10) },
    Winseparator { VertSplit },
    Substitute { IncSearch },
    MatchParen { bg = hsl(300, 100, 40), fg = hsl(60, 100, 50), gui = "bold" },
    ModeMsg { Normal },
    MsgArea { Normal },
    MoreMsg { Normal },
    Question { fg = hsl(120, 90, 75) }, -- "Press enter or type command to continue"

    ErrorMsg { fg = hsl(0, 100, 65) },
    WarningMsg { fg = hsl(60, 30, 70), }, -- warning messages

    LspCodeLens { fg = Comment.fg.darken(10), gui = "italic" },
    CmpGhostText  { LspCodeLens },

    DiagnosticError { ErrorMsg },
    DiagnosticWarn { WarningMsg }, 
    DiagnosticInfo { fg = hsl(197, 40, 50) },
    DiagnosticHint { fg = hsl(234, 57, 64) },
    DiagnosticUnnecessary { fg = Normal.fg.darken(55), gui = "italic"},
    DiagnosticVirtualTextError { DiagnosticError, bg = Normal.bg.mix(DiagnosticError.fg, 15) },
    DiagnosticVirtualTextWarn { DiagnosticWarn, bg = Normal.bg.mix(DiagnosticWarn.fg, 15) },
    DiagnosticVirtualTextInfo { DiagnosticInfo, bg = Normal.bg.mix(DiagnosticInfo.fg, 15) },
    DiagnosticVirtualTextHint { DiagnosticHint, bg = Normal.bg.mix(DiagnosticInfo.fg, 15) },
    --

    DiagnosticUnderlineError { sp = hsl(0, 70, 60), gui = "undercurl" },
    DiagnosticUnderlineWarn { sp = hsl(60, 20, 40), gui = "undercurl"  },
    DiagnosticUnderlineInfo { sp = hsl(210, 100, 35), gui = "undercurl" },
    DiagnosticUnderlineHint { sp = hsl(280, 100, 35), gui = "undercurl" },


    Debug { fg = palette.yellow },                                  --    debugging statements

    Identifier { fg = hsl(219, 14, 80) },
    Type { fg = hsl(182, 30, 75), gui = "italic" }, -- (preferred) int, long, char, etc.
    Function { fg = hsl(212, 40, 75) },

    Constant { fg = hsl(240, 55, 75) },
    String { fg = hsl(130, 45, 70), },
    Character { fg = String.fg },
    Attribute { Character },
    Number { fg = hsl(50, 70, 65) },
    -- Boolean { fg = hsl(210, 100, 80) },
    Boolean { fg = hsl(210, 100, 80) },
    -- Float         = { },
    Error { fg = hsl(360, 80, 60), gui = "italic" },

    Conditional { fg = hsl(360, 80, 72) },
    Statement { fg = Conditional.fg },
    Label { fg = hsl(190, 70, 60) },
    Operator { Label },
    Keyword { fg = hsl(275, 45 , 70) },
    -- Exception { }, --  try, catch, throw

    PreProc { fg = hsl(360, 70, 65) }, -- (preferred) generic Preprocessor
    -- Include { }, --  preprocessor #include
    -- Define { }, --   preprocessor #define
    -- Macro { }, --    same as Define
    -- PreCondit { }, --  preprocessor #if, #else, #endif, etc.

    -- Type { fg = hsl(180, 80, 75) },
    -- StorageClass { }, -- static, register, volatile, etc.
    -- Structure { }, --  struct, union, enum, etc.
    -- Typedef { }, --  A typedef

    Special { fg = hsl(300, 50, 60) }, -- (preferred) any special symbol
    -- SpecialChar { }, --  special character in a constant
    Tag { Label },                      --    you can use CTRL-] on this
    Delimiter { Special },              --  character that needs attention
    -- Punctuation { fg = palette.cyan.mix(Normal.bg, 10) },
    Punctuation { fg = hsl(180, 65, 50) },
    -- SpecialComment { }, -- special things inside a comment

    sym"@comment" { Comment },
    sym"@punctuation" { Punctuation },
    sym"@include" { PreProc },
    sym"@punctuation.special" { Special },
    sym"@text.diff.add" { DiffAdd },
    sym"@text.diff.delete" { DiffDelete },
    sym"@attribute.diff" { fg = hsl(60, 90, 65) },
    sym"@string" { String },
    sym"@string.escape" { sym"@string" },
    sym"@string.special" { sym"@string" },
    sym"@character" { sym"@string" },
    sym"@character.special" { sym"@string" },
    sym"@constant" { Constant },
    sym"@constant.builtin" { sym "@constant" },
    sym"@number" { Number },
    sym"@boolean" { Boolean },
    sym"@float" { sym "@number" },
    sym"@function" { Function },
    sym"@function.call" { sym "@function" },
    sym"@method" { Function },
    sym"@function.builtin" { fg = sym"@method".fg },
    sym"@type" { Type },
    sym"@type.definition" { sym "@type" },
    sym"@type.qualifier" { Constant },
    sym"@variable" { Identifier },
    sym"@variable.builtin" { fg = Identifier.fg.lighten(10) },
    sym"@field" { fg = hsl(15, 20, 75) },
    sym"@property" { sym "@field" },
    sym"@parameter" { fg = hsl(26, 70, 70) },
    sym"@constructor" { sym"@function" },
    sym"@conditional" { Conditional },
    sym"@label" { Label },
    sym"@operator" { Operator },
    sym"@keyword" { Keyword },
    sym"@tag.delimiter" { Delimiter },
    -- sym"@keyword.function.lua" { Function },
    sym'@text.literal' { fg = Normal.fg },
    sym"@text.reference" { fg = Normal.purple },
    sym"@text.title" { fg = Normal.fg.lighten(40) },
    sym"@text.uri" { gui = "underline", fg = hsl(190, 50, 60) },
    sym"@text.uri.html" { gui = "underline", fg = String.fg },
    sym"@text.underline" { sym"@text.uri" },
    -- sym"@text.todo" { bg = palette.bg.lighten(13), gui = "italic, bold" },
    sym"@error" { Error },
    sym"@punctuation.bracket" { Normal },

    -- -- Semantic token groups
    -- sym"@lsp.type.function" { sym "@function" },
    sym"@lsp.type.function" { sym "@function" },
    sym"@lsp.type.variable" { Identifier },
    -- sym"@lsp.typemod.variable.declaration" { sym"@variable" },
    sym"@lsp.type.method" { sym "@method" },
    sym"@lsp.type.parameter" { sym "@parameter" },
    sym"@lsp.type.property" { sym "@property" },
    sym"@lsp.type.class" { sym "@type" },
    sym"@lsp.mod.control" { fg = sym "@conditional".fg },
    sym"@lsp.typemod.parameter.label" { gui = "italic" },
    -- sym"@lsp.typemod.method.declaration" { fg = hsl(240, 50, 75) },
    -- sym"@lsp.typemod.property.instance" { sym "@function"},
    -- sym"@lsp.mod.annotation" { fg = palette.blue },
    -- sym"@lsp.type.keyword" { sym"@keyword" },
    sym"@lsp.typemod.function.defaultLibrary" { sym "@function.builtin" },

    IndentBlanklineContextStart { bg = hsl(180, 100, 10) },
    IndentBlanklineContextChar { fg = hsl(180, 70, 30) },
    IndentBlanklineChar { fg = Normal.bg.lighten(12) },

    -- Lualine
    LuaLineVisualA { bg = Visual.bg.lighten(40), fg = hsl(0, 0,0 ), gui = "bold" },
    LuaLineVisualB { bg = Normal.bg.lighten(14), fg = Normal.fg.darken(0)  },
    LuaLineVisualC { bg = Normal.bg.lighten(5), fg = Normal.fg },

    LuaLineCommandA { bg = Function.fg.mix(NormalFloat.bg, 25), fg = hsl(0, 0,0 ), gui = "bold" },
    LuaLineCommandB { bg = Normal.bg.lighten(14), fg = Normal.fg  },
    LuaLineCommandC { bg = Normal.bg.lighten(5), fg = Normal.fg },

    LuaLineNormalA { bg = hsl(275, 70, 72).mix(NormalFloat.bg, 10), fg = hsl(0, 0, 0), gui = "bold" },
    LuaLineNormalB { bg = Normal.bg.lighten(14), fg = Normal.fg.darken(0)  },
    LuaLineNormalC { bg = Normal.bg.lighten(5), fg = Normal.fg },

    LuaLineReplaceA { bg = hsl(0, 80, 70).mix(NormalFloat.bg, 15), fg = hsl(0, 0,0 ), gui = "bold" },
    LuaLineReplaceB { bg = Normal.bg.lighten(14), fg = Normal.fg.darken(0)  },
    LuaLineReplaceC { bg = Normal.bg.lighten(5), fg = Normal.fg },

    LuaLineInsertA { bg = hsl(190, 100, 50).mix(NormalFloat.bg, 20), fg = hsl(0, 0,0 ), gui = "bold" },
    LuaLineInsertB { bg = Normal.bg.lighten(14), fg = Normal.fg.darken(0)  },
    LuaLineInsertC { bg = Normal.bg.lighten(5), fg = Normal.fg },

    LuaLineUnfocused { bg = Normal.bg.lighten(5), fg = Normal.fg },

    -- nvim-cmp
    CmpDocumentation { fg = NormalFloat.fg, bg = NormalFloat.bg },
    CmpDocumentationBorder { fg = Punctuation.fg, bg = NormalFloat.bg },
    CmpItemAbbr { fg = NormalFloat.fg },
    CmpItemAbbrDeprecated { fg = NormalFloat.fg, gui = "strikethrough" },
    CmpItemAbbrMatch { fg = PmenuSel.fg },
    CmpItemAbbrMatchFuzzy { fg = PmenuSel.fg },
    -- CmpItemMenu { fg = Normal.fg.mix(Normal.bg, 20) },
    CmpItemKindDefault { fg = Normal.fg },
    CmpItemKindKeyword { fg = Keyword.fg },
    CmpItemKindVariable { fg = Identifier.fg },
    CmpItemKindConstant { fg = Constant.fg },
    CmpItemKindReference { fg = Normal.fg },
    CmpItemKindValue { fg = Normal.fg },
    CmpItemKindFunction { fg = Function.fg },
    CmpItemKindMethod { CmpItemKindFunction },
    CmpItemKindConstructor { CmpItemKindFunction },
    CmpItemKindClass { fg = Type.fg },
    CmpItemKindInterface { fg = Type.fg},
    CmpItemKindStruct { fg = Type.fg },
    CmpItemKindEvent { fg = Label.fg },
    CmpItemKindEnum { fg = Type.fg },
    CmpItemKindUnit { fg = Number.fg },
    CmpItemKindModule { fg = Keyword.fg },
    -- CmpItemKindProperty { fg = sym"@property".fg },
    -- CmpItemKindField { CmpItemKindProperty },
    CmpItemKindTypeParameter { fg = Type.fg },
    CmpItemKindEnumMember { fg = Type.fg },
    CmpItemKindOperator { fg = Operator.fg },
    CmpItemKindSnippet { fg = Label.fg },

    -- which-key
    WhichKey { Character },
    WhichKeyGroup { Tag },
    WhichKeySeparator { Operator },
    WhichKeyDesc { Normal },

    --nvim-tree
    NvimTreeNormal { bg = Normal.bg },
    NvimTreeNormalNC { NvimTreeNormal },
    NvimTreeWindowPicker { fg = Pmenu.fg, bg = PmenuSel.bg, gui = "bold" },
    NvimTreeIndentMarker { fg = Punctuation.fg },
    NvimTreeRootFolder { fg = Directory.fg },
    NvimTreeFolderIcon { fg = Directory.fg },
    NvimTreeFolderName { fg = Normal.fg },
    NvimTreeOpenedFolderName { gui = "italic" },
    NvimTreeSpecialFile { fg = hsl(275, 70, 72) },
    NvimTreeExecFile { fg = Function.fg },
    NvimTreeGitStaged { fg = Constant.fg },
    NvimTreeGitDirty { fg = Type.fg },
    NvimTreeGitMerge { fg = Number.fg },
    NvimTreeGitDeleted { fg = hsl(0, 100, 50) },
    NvimTreeGitNew { fg = Function.fg },

    -- Noice
    NoiceCmdlinePopupTitle { fg = LuaLineCommandA.bg, gui = "bold" },
    NoiceCmdlinePopupBorder { fg = NoiceCmdlinePopupTitle.fg },
    NoiceCmdlineIcon { fg = NoiceCmdlinePopupTitle.fg },
    NoiceCursor { bg = hsl(60, 100, 50), fg = Normal.bg },

    -- -- Oil
    OilDir { fg = hsl(210, 100, 65) },


  }
end
)

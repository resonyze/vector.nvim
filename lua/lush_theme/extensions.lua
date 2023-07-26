local lush = require("lush")
local hsl = lush.hsl
local editor = require("lush_theme.editor")
local syntax = require("lush_theme.syntax")

return lush(function()
  return {
    IndentBlanklineContextStart { bg = hsl(180, 100, 10), },
    IndentBlanklineContextChar { fg = hsl(180, 100, 50), },

    -- Lualine
    LuaLineVisualA { bg = editor.Visual.bg.lighten(40), fg = hsl(0, 0,0 ), gui = "bold" },
    LuaLineVisualB { bg = editor.Normal.bg.lighten(25), fg = editor.Normal.fg.darken(0)  },
    LuaLineVisualC { bg = editor.Normal.bg.lighten(8), fg = editor.Normal.fg },

    LuaLineCommandA { bg = syntax.Function.fg.mix(editor.NormalFloat.bg, 25), fg = hsl(0, 0,0 ), gui = "bold" },
    LuaLineCommandB { bg = editor.Normal.bg.lighten(15), fg = editor.Normal.fg  },
    LuaLineCommandC { bg = editor.Normal.bg.lighten(8), fg = editor.Normal.fg },

    LuaLineNormalA { bg = hsl(275, 70, 72).mix(editor.NormalFloat.bg, 10), fg = hsl(0, 0, 0), gui = "bold" },
    LuaLineNormalB { bg = editor.Normal.bg.lighten(25), fg = editor.Normal.fg.darken(0)  },
    LuaLineNormalC { bg = editor.Normal.bg.lighten(8), fg = editor.Normal.fg },

    LuaLineReplaceA { bg = hsl(0, 80, 70).mix(editor.NormalFloat.bg, 15), fg = hsl(0, 0,0 ), gui = "bold" },
    LuaLineReplaceB { bg = editor.Normal.bg.lighten(25), fg = editor.Normal.fg.darken(0)  },
    LuaLineReplaceC { bg = editor.Normal.bg.lighten(8), fg = editor.Normal.fg },

    LuaLineInsertA { bg = hsl(190, 100, 50).mix(editor.NormalFloat.bg, 20), fg = hsl(0, 0,0 ), gui = "bold" },
    LuaLineInsertB { bg = editor.Normal.bg.lighten(25), fg = editor.Normal.fg.darken(0)  },
    LuaLineInsertC { bg = editor.Normal.bg.lighten(8), fg = editor.Normal.fg },

    LuaLineUnfocused { bg = editor.Normal.bg.lighten(10), fg = editor.Normal.fg },

    -- nvim-cmp
    CmpDocumentation { fg = editor.NormalFloat.fg, bg = editor.NormalFloat.bg },
    CmpDocumentationBorder { fg = syntax.Punctuation.fg, bg = editor.NormalFloat.bg },
    CmpItemAbbr { fg = editor.NormalFloat.fg },
    CmpItemAbbrDeprecated { fg = editor.NormalFloat.fg, gui = "strikethrough" },
    CmpItemAbbrMatch { fg = editor.PmenuSel.fg },
    CmpItemAbbrMatchFuzzy { fg = editor.PmenuSel.fg },
    -- CmpItemMenu { fg = editor.Normal.fg.mix(editor.Normal.bg, 20) },
    CmpItemKindDefault { fg = editor.Normal.fg },
    CmpItemKindKeyword { fg = syntax.Keyword.fg },
    CmpItemKindVariable { fg = syntax.Identifier.fg },
    CmpItemKindConstant { fg = syntax.Constant.fg },
    CmpItemKindReference { fg = editor.Normal.fg },
    CmpItemKindValue { fg = editor.Normal.fg },
    CmpItemKindFunction { fg = syntax.Function.fg },
    CmpItemKindMethod { CmpItemKindFunction },
    CmpItemKindConstructor { CmpItemKindFunction },
    CmpItemKindClass { fg = syntax.Type.fg },
    CmpItemKindInterface { fg = syntax.Type.fg},
    CmpItemKindStruct { fg = syntax.Type.fg },
    CmpItemKindEvent { fg = syntax.Label.fg },
    CmpItemKindEnum { fg = syntax.Type.fg },
    CmpItemKindUnit { fg = syntax.Number.fg },
    CmpItemKindModule { fg = syntax.Keyword.fg },
    -- CmpItemKindProperty { fg = sym"@property".fg },
    -- CmpItemKindField { CmpItemKindProperty },
    CmpItemKindTypeParameter { fg = syntax.Type.fg },
    CmpItemKindEnumMember { fg = syntax.Type.fg },
    CmpItemKindOperator { fg = syntax.Operator.fg },
    CmpItemKindSnippet { fg = syntax.Label.fg },

    -- which-key
    WhichKey { syntax.Character },
    WhichKeyGroup { syntax.Tag },
    WhichKeySeparator { syntax.Operator },
    WhichKeyDesc { editor.Normal },

    --nvim-tree
    NvimTreeNormal { bg = editor.Normal.bg },
    NvimTreeNormalNC { NvimTreeeditor.Normal },
    NvimTreeWindowPicker { fg = editor.Pmenu.fg, bg = PmenuSel.bg, gui = "bold" },
    NvimTreeIndentMarker { fg = syntax.Punctuation.fg },
    NvimTreeRootFolder { fg = editor.Directory.fg },
    NvimTreeFolderIcon { fg = editor.Directory.fg },
    NvimTreeFolderName { fg = editor.Normal.fg },
    NvimTreeOpenedFolderName { gui = "italic" },
    NvimTreeSpecialFile { fg = hsl(275, 70, 72) },
    NvimTreeExecFile { fg = syntax.Function.fg },
    NvimTreeGitStaged { fg = syntax.Constant.fg },
    NvimTreeGitDirty { fg = syntax.Type.fg },
    NvimTreeGitMerge { fg = syntax.Number.fg },
    NvimTreeGitDeleted { fg = hsl(0, 100, 50) },
    NvimTreeGitNew { fg = syntax.Function.fg },

    -- Noice
    NoiceCmdlinePopupTitle { fg = LuaLineCommandA.bg, gui = "bold" },
    NoiceCmdlinePopupBorder { fg = NoiceCmdlinePopupTitle.fg },
    NoiceCmdlineIcon { fg = NoiceCmdlinePopupTitle.fg },
    NoiceCursor { bg = hsl(60, 100, 50), fg = editor.Normal.bg },

    -- -- Oil
    OilDir { fg = hsl(210, 100, 65) },
  }
  end
)

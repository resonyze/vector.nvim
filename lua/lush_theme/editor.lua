local lush      = require("lush")
local hsl       = lush.hsl

return lush(function()
  return {
    -- Normal { bg = hsl(214, 32, 14), fg = hsl(210, 2, 81) },                    -- Normal text
    Normal { bg = hsl(220, 13, 18), fg = hsl(210, 2, 81) },                    -- Normal text
    NormalFloat { bg = Normal.bg.lighten(10), fg = Normal.fg },   -- Normal text in floating windows
    NormalNC { Normal },                            -- Normal text in non-current windows

    LineNr { fg = Normal.bg.lighten(35), bg = Normal.bg },
    SignColumn { bg = LineNr.bg, fg = LineNr.fg },
    FoldColumn { SignColumn },
    ColorColumn { bg = NormalFloat.bg },

    -- More negative, more cyan-like
    Visual { bg = NormalFloat.bg },

    Pmenu { bg = NormalFloat.bg.darken(5), fg = Normal.fg },
    PmenuSel { bg = Pmenu.bg.lighten(15), },
    PmenuKind { bg = Pmenu.bg, fg = Normal.fg },
    PmenuKindSel { bg = Pmenu.bg, fg = Normal.fg },
    PmenuExtra { bg = Pmenu.bg, fg = Normal.fg },
    PmenuExtraSel { bg = Pmenu.bg, fg = Normal.fg },
    PmenuSbar { bg = Pmenu.bg, fg = Normal.fg },
    PmenuThumb { bg = Pmenu.bg, fg = Normal.fg },

    Whitespace { fg = NormalFloat.bg.lighten(25) },
    NonText { fg = NormalFloat.bg.lighten(50) },   --eol highlighing

    Comment { fg = LineNr.fg, gui = "italic" },

    Search { bg = hsl(60, 90, 50), fg = Normal.bg },
    IncSearch { bg = Search.bg, fg = Normal.bg },
    CurSearch { Search },

    -- CursorLine { bg = Normal.bg.rotate(-5).darken(-10) },
    -- CursorLine { bg = Normal.bg.rotate(-15).lighten(10) },
    CursorLine { bg = Normal.bg.lighten(7) },
    CursorLineNr { bg = CursorLine.bg, fg = Search.bg.mix(LineNr.bg, 10), gui = "bold" },
    StatusLine { fg = Normal.fg, bg = NormalFloat.bg.lighten(5) },
    StatusLineNC { fg = Normal.fg, bg = StatusLine.bg.darken(10) },

    TabLineFill { bg = NormalFloat.bg },
    TabLineSel { fg = Normal.fg, bg = TabLineFill.bg.rotate(-10).lighten(10), gui = "bold" },
    TabLine { fg = Normal.fg, bg = TabLineFill.bg },

    Folded { bg = Pmenu.bg, fg = Normal.fg.darken(10), gui = "italic" },
    DiffAdd { bg = hsl(120, 100, 20) },    -- diff mode: Added line |diff.txt|
    DiffChange { bg = NormalFloat.bg },    -- diff mode: Changed line |diff.txt|
    DiffDelete { bg = hsl(0, 100, 25) },   -- diff mode: Deleted line |diff.txt|
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

    ErrorMsg { fg = hsl(0, 100, 55) },
    WarningMsg { fg = hsl(60, 50, 50), }, -- warning messages

    LspCodeLens { fg = Normal.bg.lighten(40), gui = "italic" },
    CmpGhostText  { LspCodeLens },

    DiagnosticError { ErrorMsg },
    DiagnosticWarn { WarningMsg },
    DiagnosticInfo { fg = Comment.fg.lighten(10) },
    DiagnosticHint { fg = LspCodeLens.fg.lighten(20) },
    DiagnosticUnnecessary { fg = Normal.fg.darken(55), gui = "italic"},

    DiagnosticUnderlineError { sp = DiagnosticError.fg, gui = "underline" },
    DiagnosticUnderlineWarn { sp = DiagnosticWarn.fg, gui = "underline"  },
    DiagnosticUnderlineInfo { sp = DiagnosticInfo.fg, gui = "underline" },
    DiagnosticUnderlineHint { sp = DiagnosticHint.fg, gui = "underline" },


    Debug { fg = palette.yellow },                                  --    debugging statements
  }
end
)

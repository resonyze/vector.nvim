local lush = require("lush")
local editor = require("lush_theme.editor")
local hsl = lush.hsl
local dim = 25

return lush(function()
  return {
    Identifier { fg = hsl(210, 100 - dim, 90) }, -- (erstwhile keyword) foreground, variables
    Function { fg = hsl(120, 90 - dim, 75) },

    Constant { fg = hsl(240, 100 - dim, 80), gui = "bold" },
    -- String { fg = palette.orange, gui = "italic", },
    String { fg = hsl(50, 100 - dim, 50), },
    Character { fg = String.fg },
    Attribute { Character },
    Number { fg = hsl(40, 100 - dim, 50) },
    Boolean { fg = hsl(190, 100 - dim, 50) },
    -- Float         = { },
    Error { fg = hsl(360, 80 - dim, 60), gui = "italic" },

    Conditional { fg = hsl(360, 80 - dim, 65), gui = "italic" },
    Statement { fg = Conditional.fg },
    Label { Boolean },
    Operator { Label },
    Keyword { fg = hsl(190, 100 - dim, 80), gui = "italic", },
    -- Exception { }, --  try, catch, throw

    PreProc { fg = hsl(360, 80 - dim, 60), gui = "bold" }, -- (preferred) generic Preprocessor
    -- Include { }, --  preprocessor #include
    -- Define { }, --   preprocessor #define
    -- Macro { }, --    same as Define
    -- PreCondit { }, --  preprocessor #if, #else, #endif, etc.

    Type { fg = hsl(212, 100 - dim, 75) }, -- (preferred) int, long, char, etc.
    -- StorageClass { }, -- static, register, volatile, etc.
    -- Structure { }, --  struct, union, enum, etc.
    -- Typedef { }, --  A typedef

    Special { fg = hsl(300, 100 - dim, 65) }, -- (preferred) any special symbol
    -- SpecialChar { }, --  special character in a constant
    Tag { Label },                      --    you can use CTRL-] on this
    Delimiter { Special },              --  character that needs attention
    -- Punctuation { fg = palette.cyan.mix(editor.Normal.bg, 10) },
    Punctuation { fg = hsl(180, 100 - dim, 50) },
    -- SpecialComment { }, -- special things inside a comment
    --
    Comment { fg = editor.LineNr.fg, gui = "italic" },
    --
    -- -- -- Semantic token groups
    -- sym"@lsp.type.function" { sym "@function" },
    -- sym"@lsp.type.variable" {},
    -- -- sym"@lsp.typemod.variable.declaration" { sym"@variable" },
    -- sym"@lsp.type.method" { sym "@method" },
    -- sym"@lsp.type.parameter" { sym "@parameter" },
    -- sym"@lsp.type.property" { sym "@property" },
    -- sym"@lsp.type.class" { sym "@type" },
    -- sym"@lsp.mod.control" { fg = sym "@conditional".fg },
    -- -- sym"@lsp.typemod.property.instance" { sym "@function"},
    -- -- sym"@lsp.mod.annotation" { fg = palette.blue },
    -- -- sym"@lsp.type.keyword" { sym"@keyword" },
    -- sym"@lsp.typemod.function.defaultLibrary" { sym "@function.builtin" },
  }
end)

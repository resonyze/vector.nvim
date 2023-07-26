local lush = require("lush_theme/vector")

local LuaLineNormalA = lush.LuaLineNormalA
local LuaLineNormalB = lush.LuaLineNormalB
local LuaLineNormalC = lush.LuaLineNormalC

local LuaLineInsertA = lush.LuaLineInsertA
local LuaLineInsertB = lush.LuaLineInsertB
local LuaLineInsertC = lush.LuaLineInsertC

local LuaLineVisualA = lush.LuaLineVisualA
local LuaLineVisualB = lush.LuaLineVisualB
local LuaLineVisualC = lush.LuaLineVisualC

local LuaLineReplaceA = lush.LuaLineReplaceA
local LuaLineReplaceB = lush.LuaLineReplaceB
local LuaLineReplaceC = lush.LuaLineReplaceC

local LuaLineCommandA = lush.LuaLineCommandA
local LuaLineCommandB = lush.LuaLineCommandB
local LuaLineCommandC = lush.LuaLineCommandC

local LuaLineUnfocused = lush.LuaLineUnfocused

return {
  normal = {
    a = {bg = tostring(LuaLineNormalA.bg), fg = tostring(LuaLineNormalA.fg), gui = tostring(LuaLineNormalA.gui)},
    b = {bg = tostring(LuaLineNormalB.bg), fg = tostring(LuaLineNormalB.fg)},
    c = {bg = tostring(LuaLineNormalC.bg), fg = tostring(LuaLineNormalC.fg)},
  },
  insert = {
    a = {bg = tostring(LuaLineInsertA.bg), fg = tostring(LuaLineInsertA.fg), gui = tostring(LuaLineInsertA.gui)},
    b = {bg = tostring(LuaLineInsertB.bg), fg = tostring(LuaLineInsertB.fg)},
    c = {bg = tostring(LuaLineInsertC.bg), fg = tostring(LuaLineInsertC.fg)},
  },
  visual = {
    a = {bg = tostring(LuaLineVisualA.bg), fg = tostring(LuaLineVisualA.fg), gui = tostring(LuaLineVisualA.gui)},
    b = {bg = tostring(LuaLineVisualB.bg), fg = tostring(LuaLineVisualB.fg)},
    c = {bg = tostring(LuaLineVisualC.bg), fg = tostring(LuaLineVisualC.fg)},
  },
  replace = {
    a = {bg = tostring(LuaLineReplaceA.bg), fg = tostring(LuaLineReplaceA.fg), gui = tostring(LuaLineReplaceA.gui)},
    b = {bg = tostring(LuaLineReplaceB.bg), fg = tostring(LuaLineReplaceB.fg)},
    c = {bg = tostring(LuaLineReplaceC.bg), fg = tostring(LuaLineReplaceC.fg)},
  },
  command = {
    a = {bg = tostring(LuaLineCommandA.bg), fg = tostring(LuaLineCommandA.fg), gui = tostring(LuaLineCommandA.gui)},
    b = {bg = tostring(LuaLineCommandB.bg), fg = tostring(LuaLineCommandB.fg)},
    c = {bg = tostring(LuaLineCommandC.bg), fg = tostring(LuaLineCommandC.fg)},
  },
  inactive = {
    a = {bg = tostring(LuaLineUnfocused.bg), fg = tostring(LuaLineUnfocused.fg)},
    b = {bg = tostring(LuaLineUnfocused.bg), fg = tostring(LuaLineUnfocused.fg)},
    c = {bg = tostring(LuaLineUnfocused.bg), fg = tostring(LuaLineUnfocused.fg)},
  }
}

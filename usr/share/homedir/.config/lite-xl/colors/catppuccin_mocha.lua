-------------------------------------------
-- catppuccin (mocha) theme for lite-xl! --
-------------------------------------------

local style = require "core.style"
local common = require "core.common"

local catppuccin = {
  ["rosewater"] = "#f5e0dc",
  ["flamingo"]  = "#f2cdcd",
  ["pink"]      = "#f5c2e7",
  ["mauve"]     = "#cba6f7",
  ["red"]       = "#f38ba8",
  ["maroon"]    = "#eba0ac",
  ["peach"]     = "#fab387",
  ["yellow"]    = "#f9e2af",
  ["green"]     = "#a6e3a1",
  ["teal"]      = "#94e2d5",
  ["sky"]       = "#89dceb",
  ["sapphire"]  = "#74c7ec",
  ["blue"]      = "#89b4fa",
  ["lavender"]  = "#b4befe",
  ["text"]      = "#cdd6f4",
  ["subtext1"]  = "#bac2de",
  ["subtext0"]  = "#a6adc8",
  ["overlay2"]  = "#9399b2",
  ["overlay1"]  = "#7f849c",
  ["overlay0"]  = "#6c7086",
  ["surface2"]  = "#585b70",
  ["surface1"]  = "#45475a",
  ["surface0"]  = "#313244",
  ["base"]      = "#1e1e2e",
  ["mantle"]    = "#181825",
  ["crust"]     = "#11111b"
}

style.background         = { common.color(catppuccin["base"]) }
style.background2        = { common.color(catppuccin["crust"]) }
style.background3        = { common.color(catppuccin["mantle"]) }
style.text               = { common.color(catppuccin["text"]) }
style.caret              = { common.color(catppuccin["text"]) }
style.accent             = { common.color(catppuccin["lavender"]) }
style.dim                = { common.color(catppuccin["overlay0"]) }
style.divider            = { common.color(catppuccin["surface2"]) }
style.selection          = { common.color(catppuccin["surface0"]) }
style.line_number        = { common.color(catppuccin["surface1"]) }
style.line_number2       = { common.color(catppuccin["text"]) }
style.line_highlight     = { common.color(catppuccin["crust"]) }
style.scrollbar          = { common.color(catppuccin["surface1"]) }
style.scrollbar2         = { common.color(catppuccin["lavender"]) }

style.syntax["normal"]   = { common.color(catppuccin["text"]) }
style.syntax["symbol"]   = { common.color(catppuccin["text"]) }
style.syntax["comment"]  = { common.color(catppuccin["overlay0"]) }
style.syntax["keyword"]  = { common.color(catppuccin["pink"]) }
style.syntax["keyword2"] = { common.color(catppuccin["pink"]) }
style.syntax["number"]   = { common.color(catppuccin["mauve"]) }
style.syntax["literal"]  = { common.color(catppuccin["yellow"]) }
style.syntax["string"]   = { common.color(catppuccin["yellow"]) }
style.syntax["operator"] = { common.color(catppuccin["maroon"]) }
style.syntax["function"] = { common.color(catppuccin["green"]) }

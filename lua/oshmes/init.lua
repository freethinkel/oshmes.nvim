local utils = require("oshmes.utils")
local highlights = require("oshmes.highlight")

local M = {}

local set_terminal_colors = function(colors)
  vim.g.terminal_color_0 = colors.black
  vim.g.terminal_color_8 = colors.black

  -- light
  vim.g.terminal_color_7 = colors.foreground
  vim.g.terminal_color_15 = colors.foreground

  -- colors
  vim.g.terminal_color_1 = colors.red
  vim.g.terminal_color_9 = colors.red

  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_10 = colors.green

  vim.g.terminal_color_3 = colors.yellow
  vim.g.terminal_color_11 = colors.yellow

  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_12 = colors.blue

  vim.g.terminal_color_5 = colors.magenta
  vim.g.terminal_color_13 = colors.magenta

  vim.g.terminal_color_6 = colors.cyan
  vim.g.terminal_color_14 = colors.cyan
end

M.setup = function(theme)
  vim.cmd("hi clear")
  -- if vim.g.colors_name then
  --   vim.cmd("hi clear")
  -- end

  vim.o.termguicolors = true
  vim.g.colors_name = theme.name

  utils.load_highlights(highlights.load(theme))
  set_terminal_colors(theme.colors)
end

return M

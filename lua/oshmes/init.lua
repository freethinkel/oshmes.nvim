local utils = require("oshmes.utils")
local highlights = require("oshmes.highlight")

local M = {}

M.setup = function(theme)
  -- if vim.g.colors_name then
  --   vim.cmd("hi clear")
  -- end

  vim.o.termguicolors = true
  vim.g.colors_name = theme.name

  utils.load_highlights(highlights.load(theme))
end

M.min_light_theme = {
  name = "min_light",
  colors = {
    background = "#ffffff",
    foreground = "#212121",
    black = "#3b4252",
    red = "#D32F2F",
    green = "#22863A",
    yellow = "#22863A",
    blue = "#1976D2",
    magenta = "#6F42C1",
    cyan = "#8aabac",
    white = "#e7e7e7",
  }
}

M.min_theme = {
  name = "min_theme",
  colors = {
    background = "#1f1f1f",
    foreground = "#bbbbbb",
    black = "#1a1a1a",
    red = "#F97583",
    green = "#71efb3",
    yellow = "#FFAB70",
    blue = "#9bcaff",
    magenta = "#B392F0",
    cyan = "#a0fff8",
    white = "#bbbbbb",
  }
}

M.dera_theme = {
  name = "dera_theme",
  colors = {
    background = "#2e3440",
    foreground = "#d8dee9",
    dim_foreground = "#a5abb6",
    black = "#3b4252",
    red = "#bf616a",
    green = "#a3be8c",
    yellow = "#ebcb8b",
    blue = "#81a1c1",
    magenta = "#b48ead",
    cyan = "#88c0d0",
    white = "#e5e9f0",
  }
}

M.tokyonight = {
  name = "tokyonight",
  colors = {
    foreground = "#a9b1d6",
    background = "#1a1b26",
    black = "#414868",
    red = "#f7768e",
    green = "#73daca",
    yellow = "#e0af68",
    blue = "#7aa2f7",
    magenta = "#bb9af7",
    cyan = "#7dcfff",
    white = "#c0caf5",
  }
}

M.mountain = {
  name = "mountain",
  colors = {
    background = "#0f0f0f",
    foreground = "#f0f0f0",
    black = "#262626",
    red = "#ac8a8c",
    green = "#8aac8b",
    yellow = "#aca98a",
    blue = "#8f8aac",
    magenta = "#ac8aac",
    cyan = "#8aabac",
    white = "#e7e7e7",
    orange = "#c6a679",
  }
}

M.solarized = {
  name = "solarized",
  colors = {
    background = "#002b36",
    foreground = "#839496",
    black = "#073642",
    red = "#dc322f",
    green = "#859900",
    yellow = "#b58900",
    blue = "#268bd2",
    magenta = "#d33682",
    cyan = "#2aa198",
    white = "#eee8d5",
  }
}

M.oxacarbon = {
  name = "oxacarbon",
  colors = {
    background = "#161616",
    foreground = "#ffffff",
    black = "#262626",
    magenta = "#ff7eb6",
    green = "#42be65",
    yellow = "#ffe97b",
    blue = "#33b1ff",
    red = "#ee5396",
    cyan = "#3ddbd9",
    white = "#dde1e6",
  }
}

M.github_dimmed = {
  name = "github_dimmed",
  colors = {
    background = "#2d333b",
    foreground = "#adbac7",
    black = "#2d333b",
    red = "#f47067",
    green = "#8ddb8c",
    yellow = "#f69d50",
    blue = "#6cb6ff",
    magenta = "#dcbdfb",
    cyan = "#96d0ff",
    white = "#adbac7",
  }
}


return M

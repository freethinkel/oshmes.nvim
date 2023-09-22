local M = {}

M.setup = function(theme)
  local lualine_theme = {}
  local colors = theme.colors;

  lualine_theme.normal = {
    a = { bg = colors.blue, fg = colors.background },
    b = { bg = colors.background, fg = colors.blue },
    c = { bg = colors.background, fg = colors.background },
  }

  lualine_theme.insert = {
    a = { bg = colors.green, fg = colors.black },
    b = { bg = colors.background, fg = colors.green },
  }

  lualine_theme.command = {
    a = { bg = colors.yellow, fg = colors.black },
    b = { bg = colors.background, fg = colors.yellow },
  }

  lualine_theme.visual = {
    a = { bg = colors.magenta, fg = colors.black },
    b = { bg = colors.background, fg = colors.magenta },
  }

  lualine_theme.replace = {
    a = { bg = colors.red, fg = colors.black },
    b = { bg = colors.background, fg = colors.red },
  }

  lualine_theme.terminal = {
    a = { bg = colors.green, fg = colors.black },
    b = { bg = colors.background, fg = colors.green },
  }

  lualine_theme.inactive = {
    a = { bg = colors.background, fg = colors.blue },
    b = { bg = colors.background, fg = colors.foreground, gui = "bold" },
    c = { bg = colors.background, fg = colors.foreground },
  }

  return lualine_theme
end

return M

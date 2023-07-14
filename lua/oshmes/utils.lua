local M = {}

M.hi = function(name, options)
  if (type(options) == "string") then
    vim.cmd('hi! link ' .. name .. " " .. options)
    return
  end
  vim.api.nvim_set_hl(0, name, options)

  -- vim.api.nvim_create_autocmd({ "ColorScheme" }, {
  --   pattern = { "*" },
  --   callback = function()
  --     vim.api.nvim_set_hl(0, name, options)
  --   end,
  -- })
end

M.load_highlights = function(highlights)
  for key, value in pairs(highlights) do
    M.hi(key, value)
  end
end

local hexToRgb = function(color)
  return {
    tonumber(string.sub(color, 2, 3), 16),
    tonumber(string.sub(color, 4, 5), 16),
    tonumber(string.sub(color, 6, 7), 16),
  }
end

local _mixColorChannel = function(channelA, channelB, amount)
  return (channelA * amount) + (channelB * (1 - amount))
end

local tohex = function(num)
  local val = string.format("%x", num)
  if (string.len(val) == 2) then
    return val
  end

  return '0' .. val
end

M.darken = function(color, amount)
  return M.mixColors(color, "#000000", amount)
end

M.lighten = function(color, amount)
  return M.mixColors(color, "#ffffff", amount)
end

M.mixColors = function(colorA, colorB, amount)
  colorA = hexToRgb(colorA)
  colorB = hexToRgb(colorB)
  amount = 1 - amount
  local mixed = {
    _mixColorChannel(colorA[1], colorB[1], amount),
    _mixColorChannel(colorA[2], colorB[2], amount),
    _mixColorChannel(colorA[3], colorB[3], amount),
  }

  return "#" .. tohex(mixed[1]) .. tohex(mixed[2]) .. tohex(mixed[3])
end


return M

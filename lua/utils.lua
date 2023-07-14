local m = {}

m.hi = function(name, options)
  if (type(options) == "string") then
    vim.cmd('hi! link ' .. name .. " " .. options)
    return
  end
  vim.api.nvim_set_hl(0, name, options)

  -- vim.api.nvim_create_autocmd({ "colorscheme" }, {
  --   pattern = { "*" },
  --   callback = function()
  --     vim.api.nvim_set_hl(0, name, options)
  --   end,
  -- })
end

m.load_highlights = function(highlights)
  for key, value in pairs(highlights) do
    m.hi(key, value)
  end
end

local hextorgb = function(color)
  return {
    tonumber(string.sub(color, 2, 3), 16),
    tonumber(string.sub(color, 4, 5), 16),
    tonumber(string.sub(color, 6, 7), 16),
  }
end

local _mixcolorchannel = function(channela, channelb, amount)
  return (channela * amount) + (channelb * (1 - amount))
end

local tohex = function(num)
  local val = string.format("%x", num)
  if (string.len(val) == 2) then
    return val
  end

  return '0' .. val
end

m.darken = function(color, amount)
  return m.mixcolors(color, "#000000", amount)
end

m.lighten = function(color, amount)
  return m.mixcolors(color, "#ffffff", amount)
end

m.mixcolors = function(colora, colorb, amount)
  colora = hextorgb(colora)
  colorb = hextorgb(colorb)
  amount = 1 - amount
  local mixed = {
    _mixcolorchannel(colora[1], colorb[1], amount),
    _mixcolorchannel(colora[2], colorb[2], amount),
    _mixcolorchannel(colora[3], colorb[3], amount),
  }

  return "#" .. tohex(mixed[1]) .. tohex(mixed[2]) .. tohex(mixed[3])
end


return m

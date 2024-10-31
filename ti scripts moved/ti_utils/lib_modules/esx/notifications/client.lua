local ESX = select(2,...)

local module = {
  showNotification = function(msg)
    ESX.ShowNotification(msg)
  end,

  drawText = function(msg)
    ESX.ShowNotification(msg)
  end,

  hideText = function()
  end,

  registerLabel = function(name, label)
    AddTextEntry(name, label)
  end,

  drawHelpText = function(name, beep)
    DisplayHelpTextThisFrame(name, beep)
  end
}

return module
local QBCore = select(2,...)

local module = {
  showNotification = function(msg,typeof,time)
    time   = time   or 3000
    typeof = typeof or "primary"

    QBCore.Functions.Notify(msg,typeof,time)
  end,

  drawText = function(msg,alignment)
    alignment = alignment or "left"
    
    exports["qb-core"]:DrawText(msg,alignment)
  end,

  hideText = function()
    exports["qb-core"]:HideText()
  end,

  registerLabel = function(name, label)
    AddTextEntry(name, label)
  end,

  drawHelpText = function(name, beep)
    DisplayHelpTextThisFrame(name, beep)
  end
}

return module
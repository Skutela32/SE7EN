--
--[[ Framework specific functions ]]--
--

local framework = shConfig.framework
local ESX, QBCore

CreateThread(function()
    if framework == 'ESX' then
        ESX = exports["es_extended"]:getSharedObject()
    elseif framework == 'QB' then
        QBCore = exports['qb-core']:GetCoreObject()
    end
end)

--
--[[ Drifting tablet opening ]]--
--

-- Tablet opening through a command
RegisterCommand("drifting", function()
    openTablet()
end)

-- Tablet opening through an event
RegisterNetEvent("rahe-drifting:client:openTablet")
AddEventHandler("rahe-drifting:client:openTablet", function(data)
    if data and data.useThinFrame then
        SendNUIMessage({ action = 'useThinBackgroundFrame' })
    end

    openTablet()
end)

--
--[[ General]]--
--

RegisterNetEvent('rahe-drifting:client:notify')
AddEventHandler('rahe-drifting:client:notify',function(message, type)
    notifyPlayer(message, type)
end)

function notifyPlayer(message, type)
    TriggerEvent('chatMessage', "SERVER", "normal", message)
end

-- You can do some logic here when the tablet is closed. For example, if you started an animation when opening, you can end the animation here.
RegisterNetEvent('rahe-drifting:client:tabletClosed', function()

end)
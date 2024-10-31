if Config.Framework ~= 'qb' then
    return
end

QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = GetPlayerData()
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(jobData)
    PlayerData.job = jobData
end)

CreateThread(function()
    PlayerData = GetPlayerData()
end)

function TriggerServerCallback(name, cb, ...)
    QBCore.Functions.TriggerCallback(name, cb, ...)
end

function GetPlayerData()
    return QBCore.Functions.GetPlayerData()
end

function GetPlayers()
    return QBCore.Functions.GetPlayers()
end

function GetPlayerIdentifier()
    return GetPlayerData().citizenid
end

function GetJobName()
    return PlayerData?.job?.name or 'unemployed'
end

function GetJobGrade()
    return PlayerData?.job?.grade?.level or 0
end

local hasGang = GetResourceState('qs-gangs') == 'started'
Gang = nil

if hasGang then
    RegisterNetEvent('gangs:setGang', function(gang)
        Gang = gang
    end)
end

function GetGangName()
    if not hasGang then
        return ''
    end
    if Gang then
        return Gang.name
    end
    local gang = exports['qs-gangs']:GetGang()
    Gang = gang
    return gang.name
end

function DrawMarkerZone(x, y, z)
    DrawMarker(1, x, y, z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 4.0, 4.0, 0.8, 255, 255, 255, 150, false, false, false, true, false, false, false)
end

function SpawnGiveVehicle(model, generatedPlate, playerID, playerName, vehicleType, addcommand)
    QBCore.Functions.SpawnVehicle(model, function(vehicle)
        if DoesEntityExist(vehicle) then
            local carExist = true
            SetEntityVisible(vehicle, false)
            SetEntityCollision(vehicle, false)

            local newPlate = generatedPlate
            local vehicleProps = QBCore.Functions.GetVehicleProperties(vehicle)
            vehicleProps.plate = newPlate
            TriggerServerEvent('advancedgarages:server:setVehicle', vehicleProps, model, playerID, vehicleType, addcommand)
        end
    end, coords, true)
end

function SpawnVehicleEvents(vehicle, plate)
    if GetResourceState(Config.Framework .. '-wheelstancer') == 'started' then
        -- You can ignore this, it only works with tuff-wheelstancer
        TriggerServerCallback('advancedgarages:server:GetStanceValues', function(stance_value)
            if stance_value ~= nil then
                Wait(500)
                local veh = GetVehiclePedIsIn(PlayerPedId())
                TriggerServerEvent('Stancer_sv:LoadStanceValues', stance_value, VehToNet(veh))
            end
        end, plate)
    end
    -- You can add your events here when the vehicle spawns
end

function GetVehiclePropertiesFramework(vehicle)
    return QBCore.Functions.GetVehicleProperties(vehicle)
end

function SetVehiclePropertiesFramework(vehicle, props)
    QBCore.Functions.SetVehicleProperties(vehicle, props)
end

function ToggleHud(bool)
    if bool then
        Debug('Event to show the hud [../client/custom/framework/qb.lua line 25]')
    else
        Debug('Event to hide the hud [../client/custom/framework/qb.lua line 27]')
    end
end

function SendTextMessage(msg, type)
    if type == 'inform' then
        QBCore.Functions.Notify(msg, 'primary', 5000)
    end
    if type == 'error' then
        QBCore.Functions.Notify(msg, 'error', 5000)
    end
    if type == 'success' then
        QBCore.Functions.Notify(msg, 'success', 5000)
    end
end

function ShowHelpNotification(msg, thisFrame, beep, duration)
    AddTextEntry('HelpNotification', msg)

    if thisFrame then
        DisplayHelpTextThisFrame('HelpNotification', false)
    else
        if beep == nil then
            beep = true
        end
        BeginTextCommandDisplayHelp('HelpNotification')
        EndTextCommandDisplayHelp(0, false, beep, duration or -1)
    end
end

function DrawText3D(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry('STRING')
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
    local factor = text:len() / 370
    DrawRect(0.0, 0.0 + 0.0125, 0.017 + factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

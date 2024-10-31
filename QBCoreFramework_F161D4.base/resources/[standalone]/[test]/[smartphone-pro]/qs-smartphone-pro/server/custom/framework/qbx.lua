--[[
    Hi dear customer or developer, here you can fully configure your server's
    framework or you could even duplicate this file to create your own framework.

    If you do not have much experience, we recommend you download the base version
    of the framework that you use in its latest version and it will work perfectly.
]]

if Config.Framework ~= 'qbx' then
    return
end

ESX = nil

ESX = exports['qb-core']:GetCoreObject()

identifierTable = 'citizenid'
userColumn = 'players'

function RegisterServerCallback(name, cb)
    ESX.Functions.CreateCallback(name, cb)
end

exports('RegisterServerCallback', RegisterServerCallback)

function RegisterUsableItem(name, cb)
    exports.qbx_core:CreateUseableItem(name, cb)
end

RegisterNetEvent('QBCore:Server:OnPlayerLoaded', function()
    local src = source
    CheckWalletId(src)
end)

function GetPlayerFromId(source)
    source = tonumber(source)
    return exports.qbx_core:GetPlayer(source)
end

function GetPlayerFromIdentifier(identifier)
    identifier = string.gsub(identifier, ' ', '')
    return exports.qbx_core:GetPlayerByCitizenId(identifier)
end

function GetItem(player, item)
    local data = exports.ox_inventory:GetItem(player.PlayerData.source, item, nil, false)
    return data
end

function AddItem(source, item, count, slot, metadata)
    exports.ox_inventory:AddItem(source, item, count, metadata, slot)
end

function GetCrypto(identifier)
    local str = ([[
        SELECT cryptocurrency FROM %s WHERE %s = ? LIMIT 1
    ]]):format(userColumn, identifierTable)
    local result = MySQL.Sync.fetchAll(str, { identifier })
    if not result[1] or not result[1].cryptocurrency then
        return 0
    end
    return result[1].cryptocurrency
end

function RemoveItem(source, item, count, slot)
    exports.ox_inventory:RemoveItem(source, item, count, metadata, slot)
end

function GetBankMoney(source)
    local player = GetPlayerFromId(source)
    return player.PlayerData.money.bank
end

function SetJob(source, job, grade)
    local player = GetPlayerFromId(source)
    player.Functions.SetJob(job, grade)
end

function AddBankMoney(source, amount)
    local player = GetPlayerFromId(source)
    player.Functions.AddMoney('bank', amount)
end

function RemoveBankMoney(source, amount)
    local player = GetPlayerFromId(source)
    player.Functions.RemoveMoney('bank', amount)
end

function GetJobName(source)
    local player = GetPlayerFromId(source)
    return player.PlayerData.job.name
end

function IsAdmin(source)
    if source == 0 then
        return true
    end
    return exports.qbx_core:HasPermission(source, 'god') or IsPlayerAceAllowed(source, 'command') or exports.qbx_core:HasPermission(source, 'admin')
end

function GetIdentifier(source)
    local player = GetPlayerFromId(source)
    if not player then
        print('ESX player not found. Source: ', source)
        return false
    end
    return player.PlayerData.citizenid
end

function GetItems(player)
    if not player then return false end
    return exports.ox_inventory:GetInventoryItems(player.PlayerData.source)
end

function GetPlayerSource(player)
    return player.PlayerData.source
end

function GetDataForWithOutMetaData(source)
    local player = GetPlayerFromId(source)
    local identifier = GetIdentifier(source)
    local result = MySQL.Sync.fetchAll('SELECT * FROM phone_metadata WHERE identifier = ?', {
        identifier
    })
    result = result[1]
    if result then return json.decode(result.metadata) end
    local info
    info = CreatePhoneMetaData({
        firstname = player.PlayerData.charinfo.firstname,
        lastname = player.PlayerData.charinfo.lastname,
        identifier = identifier,
        phone = player.PlayerData.charinfo.phone
    })
    MySQL.Async.execute('INSERT INTO phone_metadata (identifier, metadata, phoneNumber) VALUES (?, ?, ?)', {
        identifier,
        json.encode(info),
        info.phoneNumber
    })
    return info
end

RegisterServerCallback('phone:market:getPlayerData', function(_, cb, player)
    local identifier = GetIdentifier(player)
    local firstName, lastName, phoneNumber = GetUserData(identifier)
    cb({
        name = firstName .. ' ' .. lastName,
        id = identifier,
    })
end)

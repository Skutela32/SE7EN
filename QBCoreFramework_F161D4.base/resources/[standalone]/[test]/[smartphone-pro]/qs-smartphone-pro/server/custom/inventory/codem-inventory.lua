if Config.Inventory ~= 'codem-inventory' then
    return
end

CodemInventory = exports['codem-inventory']

function GetUserData(identifier)
    local str = ([[
        SELECT %s FROM %s WHERE %s = ?
    ]]):format(Config.Framework == 'esx' and 'firstname, lastname, phone_number' or 'charinfo', userColumn, identifierTable)
    local result = MySQL.Sync.fetchAll(str, {
        identifier
    })
    result = result[1]
    if not result then return false end
    local firstname, lastname, phone
    if Config.Framework == 'esx' then
        firstname = result.firstname
        lastname = result.lastname
        phone = result.phone_number
    elseif Config.Framework == 'qb' then
        local data = json.decode(result.charinfo)
        firstname = data.firstname
        lastname = data.lastname
        phone = data.phone
    end
    if not phone and Config.Framework == 'esx' then
        phone = Config.Prefix .. math.random(StartDigit, FinishDigit)
        MySQL.Sync.execute('UPDATE `users` SET `phone_number` = ? WHERE `identifier` = ?', {
            phone,
            identifier
        })
    end
    return firstname, lastname, phone
end

function InitPhoneMeta(src, slot, data)
    if Config.Framework == 'esx' then
        CodemInventory:SetItemMetadata(src, slot, data)
    else
        CodemInventory:SetItemMetadata(src, slot, data)
        -- local player = GetPlayerFromId(src)
        -- player.PlayerData.items[slot].info.metadata = data.metadata
        -- player.PlayerData.items[slot].info.charinfo = data.charinfo
        -- player.PlayerData.items[slot].info.phoneNumber = data.phoneNumber
        -- player.PlayerData.items[slot].info.owneridentifier = data.owneridentifier
        -- player.Functions.SetInventory(player.PlayerData.items)
    end
    Debug('Init phone meta', src, slot, data)
end

function SaveMetadataToInventory(src, customNumber)
    local player = GetPlayerFromId(src)
    local items = GetItems(player)
    local slot = 0
    --local meta
    if not items then return Debug('Save metadata to inventory failed. items is nil', 'Player src:', src) end
    local phone = customNumber or MetaData[src].phoneNumber
    for k, v in pairs(items) do
        for phoneName, phoneData in pairs(Config.Phones) do
            if v.name == phoneName then
                local meta = v.info and v.info or v.metadata
                --print('Test1'..json.encode(meta))
                --print('Test2'..meta.phoneNumber)
                if meta.phoneNumber == phone and PhoneIsUseable(meta.uniqueId) then
                    slot = v.slot
                    break
                end
            end
        end
    end
    CodemInventory:SetItemMetadata(src, slot, MetaData[src])
end

function RegisterItems()
    for k, v in pairs(Config.Phones) do
        RegisterUsableItem(k, function(source, item, item)
            local player = GetPlayerFromId(source)
            if not item?.info or not item?.info?.phoneNumber then
                local result = MySQL.Sync.fetchAll('SELECT firstname, lastname FROM users WHERE identifier = ?', {
                    player.identifier
                })
                result = result[1]
                local info = CreatePhoneMetaData({
                    firstname = result.firstname,
                    lastname = result.lastname,
                    identifier = player.identifier,
                })
                item.info = info
                print(json.encode(item))
                CodemInventory:SetItemMetadata(source, item.slot, info)
                Debug('Created phone meta')
            end
            TriggerClientEvent('phone:openPhone', source, v, k, item.info)
        end)
    end
end

exports('handleDeleteItem', function(source, itemData)
    if itemData then
        local metaPhone = MetaData[source]?.phoneNumber
        local itemIsPhone = ItemIsPhone(itemData.name)
        if not itemIsPhone then return end
        local itemPhoneNumber = itemData.info.phoneNumber
        if metaPhone and itemPhoneNumber and itemPhoneNumber == metaPhone then
            MetaData[source] = nil
            TriggerClientEvent('phone:UpdatedMeta', source, nil)
            Debug('Cleared metadata. for: ' .. source)
        end
    else
        local metaPhone = MetaData[source]?.phoneNumber
        local existPhone = FindUserExistPhone(source, metaPhone)
        if not existPhone then
            MetaData[source] = nil
            TriggerClientEvent('phone:UpdatedMeta', source, nil)
            Debug('Cleared metadata. for: ' .. source)
        end
    end
end)

local QBCore = exports['qb-core']:GetCoreObject()

for i = 1, 50 do
    QBCore.Functions.CreateUseableItem("level" .. i, function(source)
        local Player = QBCore.Functions.GetPlayer(source)
        if Player then
            local currentLevel = Player.PlayerData.gang.grade.level or Player.PlayerData.gang.grade 

            if currentLevel and currentLevel >= i then
                TriggerClientEvent('QBCore:Notify', source, "You are already Level " .. currentLevel .. " or higher!")
            else
                Player.Functions.SetGang("level", i) -- Sets Level To i
                Player.Functions.RemoveItem("level" .. i, 1) -- Remove Item
                TriggerClientEvent('QBCore:Notify', source, "You Are Now Level " .. i .. "!")

                
                if i == 2 then
                    Player.Functions.AddItem("rolex", 3)
                    TriggerClientEvent('QBCore:Notify', source, "You received 3 Rolexs!")
                elseif i == 5 then
                    Player.Functions.AddItem("turbo", 2)
                    TriggerClientEvent('QBCore:Notify', source, "You received 2 Turbos!")
                elseif i == 7 then
                    Player.Functions.AddItem("goldbar", 2)
                    TriggerClientEvent('QBCore:Notify', source, "You received 2 Gold Bars!")
                end
            end
        end
    end)
end

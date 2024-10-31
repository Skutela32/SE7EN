RegisterNetEvent("jg-dealerships:server:purchase-vehicle:config", function(vehNetId, plate, purchaseType, amount, paymentMethod, financed)
  local src = source
  local vehicle = NetworkGetEntityFromNetworkId(vehNetId)

end)

lib.callback.register("jg-dealerships:server:showroom-pre-check", function(src, dealershipId)
  local allowed = true

  -- Write some server-sided code here. Again, update the "allowed" variable

  if not allowed then
    Framework.Server.Notify(src, "You are not allowed to access the showroom (server-side)", "error")
    return false
  end

  return true
end)




-----------------------------------------


QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('checkOwnedVehicles')
AddEventHandler('checkOwnedVehicles', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local citizenid = Player.PlayerData.citizenid

    -- Query the database for vehicles owned by the player
    MySQL.Async.fetchAll('SELECT * FROM player_vehicles WHERE citizenid = @citizenid', {
        ['@citizenid'] = citizenid
    }, function(vehicles)
        local vehicleCount = #vehicles -- Count the number of vehicles owned

        -- Send back the vehicle count and the list of vehicles
        TriggerClientEvent('receiveOwnedVehicles', src, vehicleCount, vehicles)
    end)
end)



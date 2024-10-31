RegisterNetEvent("jg-dealerships:client:purchase-vehicle:config", function(vehicle, plate, purchaseType, amount, paymentMethod, financed)
  TriggerEvent('checkMyVehicles')
end)

RegisterNetEvent("jg-dealerships:client:start-test-drive:config", function(vehicle, plate)

end)

RegisterNetEvent("jg-dealerships:client:sell-vehicle:config", function(vehicle, plate)
  --
  -- Add code here to run before the vehicle is deleted
  --
end)

RegisterNetEvent("jg-dealerships:client:showroom-pre-check", function(dealershipId, cb)
  local res = lib.callback.await("jg-dealerships:server:showroom-pre-check", false, dealershipId) -- You can also do some server-side/database checks. This callback can be found in config-sv.lua
  if not res then return cb(false) end

  local allowed = true
  
  -- Write some code here. Update the "allowed" variable to true or false :)
  -- This would typically be used to check you have a license, for example

  if not allowed then
    Framework.Client.Notify("You are not allowed to access the showroom", "error")
    return cb(false)
  end
  
  return cb(true)
end)






---------------------------------------------

-- Client-side event to request vehicle ownership check
RegisterNetEvent('checkMyVehicles')
AddEventHandler('checkMyVehicles', function()
    TriggerServerEvent('checkOwnedVehicles')
end)

-- Client-side event to receive owned vehicles data
RegisterNetEvent('receiveOwnedVehicles')
AddEventHandler('receiveOwnedVehicles', function(vehicleCount, vehicles)
    if vehicleCount > 0 then
        local foundKanjoSJ = false
        local foundSentinel3 = false
        local foundDominator10 = false

        for _, vehicle in ipairs(vehicles) do
            if vehicle.vehicle == 'kanjo' then
                foundKanjoSJ = true
            elseif vehicle.vehicle == 'sentinel2' then
                foundSentinel3 = true
            elseif vehicle.vehicle == 'sabregt' then
                foundDominator10 = true
            end
        end

        -- Output the results
        if vehicleCount == 1 then
          if foundKanjoSJ then
              print("You own the Kanjo.")
              TriggerEvent('cut:FirstKanjoIntro')
              TriggerEvent('S32-Missions:startMission', 0)
          end
          if foundSentinel3 then
              print("You own the Sentinel.")
              TriggerEvent('cut:FirstSentinelIntro')
              TriggerEvent('S32-Missions:startMission', 0)
          end
          if foundDominator10 then
              print("You own the Sabre GT.")
              TriggerEvent('cut:FirstDominatorIntro')
              TriggerEvent('S32-Missions:startMission', 0)
          end

          if not foundKanjoSJ and not foundSentinel3 and not foundDominator10 then
              print("This Shit's Fucked!!")
          end
        else
          print("You own more then 1 vehicle")
        end 
    else
        print("You do not own any vehicles.")
    end
end)





RegisterCommand('checkvehicles', function()
  TriggerEvent('checkMyVehicles')
end)



--if vehicleCount <= 1 then
--  TriggerEvent('cut:introCinematic')
--end

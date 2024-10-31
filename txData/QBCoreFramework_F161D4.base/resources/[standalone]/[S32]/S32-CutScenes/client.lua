local ped = PlayerPedId()

RegisterCommand('stopvideo', function()
    TriggerEvent('stopVideoEvent')
end)

RegisterCommand('introCinematic', function()
    TriggerEvent('cut:introCinematic')
end)

RegisterNetEvent('cut:introCinematic', function()
    TriggerEvent('playVideoEvent', "intro.mp4") -- Start The Video
    Wait(4520) -- Video Time
    DoScreenFadeOut(250) -- Fade Out
    TriggerEvent('stopVideoEvent') -- Stops Video
    Wait(2500) -- Darkness
    DoScreenFadeIn(250) -- Fade In
    TriggerEvent('qb-multicharacter:client:chooseChar')
end) 

RegisterCommand('firstLoad', function()
    TriggerEvent('cut:firstLoad')
end)

RegisterNetEvent('cut:firstLoad', function()
    TriggerEvent('playVideoEvent', "firstspawn.mp4") -- Start The Video
    SetEntityCoords(ped, SK32.IntroSpawn) -- Tp New Location
    Wait(4520) -- Video Time
    DoScreenFadeOut(250) -- Fade Out
    TriggerEvent('stopVideoEvent') -- Stops Video
    Wait(2500) -- Darkness
    print ("tp")
    SetEntityCoords(ped, SK32.IntroSpawn) -- Tp New Location
    DoScreenFadeIn(250) -- Fade In
end) 



------------------ First Car ---------------------

RegisterNetEvent('cut:FirstDominatorIntro', function()
    TriggerEvent('playVideoEvent', "FirstDominatorIntro.mp4") -- Start The Video
    Wait(7300) -- Video Time
    DoScreenFadeOut(250) -- Fade Out
    TriggerEvent('stopVideoEvent') -- Stops Video
    Wait(500) -- Darkness
    DoScreenFadeIn(250) -- Fade In
end) 

RegisterNetEvent('cut:FirstSentinelIntro', function()
    TriggerEvent('playVideoEvent', "FirstSentinelIntro.mp4") -- Start The Video
    Wait(7300) -- Video Time
    DoScreenFadeOut(250) -- Fade Out
    TriggerEvent('stopVideoEvent') -- Stops Video
    Wait(500) -- Darkness
    DoScreenFadeIn(250) -- Fade In
end) 

RegisterNetEvent('cut:FirstKanjoIntro', function()
    TriggerEvent('playVideoEvent', "FirstKanjoIntro.mp4") -- Start The Video
    Wait(7300) -- Video Time
    DoScreenFadeOut(250) -- Fade Out
    TriggerEvent('stopVideoEvent') -- Stops Video
    Wait(500) -- Darkness
    DoScreenFadeIn(250) -- Fade In
end) 



------------------ Garage Arrival ---------------------

RegisterNetEvent('cut:GarageArriveFirst', function()
    TriggerEvent('playVideoEvent', "GarageArriveFirst.mp4") -- Start The Video
    Wait(2000) -- Video Time
    DoScreenFadeOut(250) -- Fade Out
    TriggerEvent('stopVideoEvent') -- Stops Video
    Wait(500) -- Darkness
    DoScreenFadeIn(250) -- Fade In
end) 

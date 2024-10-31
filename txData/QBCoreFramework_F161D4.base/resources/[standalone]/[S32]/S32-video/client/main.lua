-- client/main.lua

-- Event listener for playing a video
RegisterNetEvent('playVideoEvent')
AddEventHandler('playVideoEvent', function(videoFile)
    SetNuiFocus(true, true) -- Enables the NUI focus
    SendNUIMessage({
        type = "playVideo",  -- Sends the message to play the video
        video = videoFile     -- Pass the video file name to the NUI
    })
end)

-- Event listener for stopping the video
RegisterNetEvent('stopVideoEvent')
AddEventHandler('stopVideoEvent', function()
    SendNUIMessage({
        type = "stopVideo" -- Sends the message to stop the video
    })
    SetNuiFocus(false, false) -- Removes the NUI focus
end)

-- Callback when the video ends naturally
RegisterNUICallback('videoEnded', function(data, cb)
    SetNuiFocus(false, false) -- Removes the NUI focus
    cb('ok')
end)

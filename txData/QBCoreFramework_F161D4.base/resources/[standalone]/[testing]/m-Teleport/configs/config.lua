Config = {}

--------------------------
-- Utility
--------------------------
Config.Utility = {
    CoreName = "qb-core", -- Core Name
    KeyTeleport = 38,
    Check = "license", -- "license" or "citizenid"
}

Config.Licenses = { -- Your licenses
    { license = "license:eefd8e3252d9ad7ff4b2fd66c09b4a0be1eb7b27"},
}

Config.CitizenID = { -- Your citizenid
    { citizenid = "ASDASDASD"},
}

Config.Teleports = {
    [1] = {
        [1] = { -- Go In
            coords = vector4(1216.63, -2902.33, 5.87, 354.67),
            AllowVehicle = true,
            drawText = '[E] - Go in bitches!'
        },
        [2] = { -- Go Out
            coords = vector4(-6612.17, 2009.8, 10.62, 72.23),
            AllowVehicle = true,
            drawText = '[E] Go out bitches!'
        },
    },
    --[[ -- Add more teleports
    [2] = {
        [1] = { -- Go In
            coords = vector4(-143.94, -576.18, 32.42, 338.01),
            AllowVehicle = true,
            drawText = '[E] - Go in bitches!'
        },
        [2] = { -- Go Out
            coords = vector4(-196.23, -579.94, 135.58, 279.06),
            AllowVehicle = true,
            drawText = '[E] Go out bitches!'
        },
    },
    ]]
}
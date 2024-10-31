--[[
    Welcome to the qs-advancedgarages configuration!
    To start configuring your new asset, please read carefully
    each step in the documentation that we will attach at the end of this message.

    Each important part of the configuration will be highlighted with a box.
    like this one you are reading now, where I will explain step by step each
    configuration available within this file.

    This is not all, most of the settings, you are free to modify it
    as you wish and adapt it to your framework in the most comfortable way possible.
    The configurable files you will find all inside client/custom/*
    or inside server/custom/*.

    Direct link to the resource documentation, read it before you start:
    https://docs.quasar-store.com/information/welcome
]]

Config = Config or {}
Locales = Locales or {}

--░██████╗░░█████╗░██████╗░░█████╗░░██████╗░███████╗░██████╗
--██╔════╝░██╔══██╗██╔══██╗██╔══██╗██╔════╝░██╔════╝██╔════╝
--██║░░██╗░███████║██████╔╝███████║██║░░██╗░█████╗░░╚█████╗░
--██║░░╚██╗██╔══██║██╔══██╗██╔══██║██║░░╚██╗██╔══╝░░░╚═══██╗
--╚██████╔╝██║░░██║██║░░██║██║░░██║╚██████╔╝███████╗██████╔╝
--░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝░╚═════╝░╚══════╝╚═════╝░

--[[
    The first thing will be to choose our main language, here you can choose
    between the default languages that you will find within locales/*,
    if yours is not there, feel free to create it!

	Languages available by default:
        'ar'
        'bg'
        'ca'
        'cs'
        'da'
        'de'
        'el'
    	'en'
    	'es'
        'fa'
        'fr'
        'he'
        'hi'
        'hu'
        'it'
        'jp'
        'ko'
        'nl'
        'no'
        'pl'
        'pt'
        'ro'
        'ru'
        'sl'
        'sv'
        'th'
        'tk'
        'tr'
        'zh'
]]

Config.Language = 'en'

--[[
    The current system will detect if you use qb-core or es_extended,
    but if you rename it, you can remove the value from Config.Framework
    and add it yourself after you have modified the framework files inside
    this script.

    Please keep in mind that this code is automatic, do not edit if
    you do not know how to do it.
]]

local frameworks = {
    ['es_extended'] = 'esx',
    ['qb-core'] = 'qb',
    ['qbx_core'] = 'qb'
}

local function dependencyCheck(data)
    for k, v in pairs(data) do
        if GetResourceState(k):find('started') ~= nil then
            return v
        end
    end
    return false
end

Config.Framework = dependencyCheck(frameworks)
Config.QBX = GetResourceState('qbx_core'):find('started') ~= nil

--[[
    You can choose between the listed menus and the target that
    is written to the right of the config itself, do not select
    an option that does not exist, in fact, it is recommended
    to leave this by default.

    Menu:
        'esx_menu_default'
        'nh-context'
        'ox_lib'
        'qb-menu'
        'esx_context'

    UseTarget:
        'ox_target'
        'qb-radialmenu'

        'none'
]]

Config.Menu = 'ox_lib'    -- We recommend leaving it with ox_lib
Config.UseTarget = 'none' -- Set 'ox_target', 'qb-radialmenu' or none (you can't set qb-target)

--[[
    Don't forget that this configuration will detect the
    script automatically and configure itself. If you don't
    use one of the scripts listed, you can create the file
    in client/custom following the other examples.

    Do not use duplicate scripts of the same type, for
    example do not use two fuel.
]]

local fuels = {
    ['qs-fuelstations'] = 'qs-fuelstations',
    ['LegacyFuel'] = 'LegacyFuel',
    ['okokGasStation'] = 'okokGasStation',
    ['esx-sna-fuel'] = 'esx-sna-fuel',
    ['ps-fuel'] = 'ps-fuel',
    ['lj-fuel'] = 'lj-fuel',
    ['ox_fuel'] = 'ox_fuel',
    ['ti_fuel'] = 'ti_fuel',
    ['FRFuel'] = 'FRFuel',
    ['ND_Fuel'] = 'ND_Fuel',
    ['cdn-fuel'] = 'cdn-fuel',
    ['BigDaddy-Fuel'] = 'BigDaddy-Fuel'
}

Config.Fuel = dependencyCheck(fuels)

--[[
    Don't forget that this configuration will detect the
    script automatically and configure itself. If you don't
    use one of the scripts listed, you can create the file
    in client/custom following the other examples.

    Do not use duplicate scripts of the same type, for
    example do not use two weather.
]]

local weathers = {
    ['cd_easytime'] = 'cd_easytime',
    ['qb-weathersync'] = 'qb-weathersync',
    ['vSync'] = 'vSync'
}

Config.Weather = dependencyCheck(weathers)

--[[
    Don't forget that this configuration will detect the
    script automatically and configure itself. If you don't
    use one of the scripts listed, you can create the file
    in client/custom following the other examples.

    Do not use duplicate scripts of the same type, for
    example do not use two vehiclekeys.
]]

local vehicleKeys = {
    ['qs-vehiclekeys'] = 'qs-vehiclekeys',
    ['qb-vehiclekeys'] = 'qb-vehiclekeys',
    ['F_RealCarKeysSystem'] = 'F_RealCarKeysSystem',
    ['fivecode_carkeys'] = 'fivecode_carkeys',
    ['glfp10_carkeys'] = 'glfp10_carkeys',
    ['mono_carkeys'] = 'mono_carkeys',
    ['ti_vehicleKeys'] = 'ti_vehicleKeys',
    ['vehicles_keys'] = 'vehicles_keys',
    ['wasabi_carlock'] = 'wasabi_carlock',
    ['xd_locksystem'] = 'xd_locksystem',
    ['qbx_vehiclekeys'] = 'qbx_vehiclekeys'
}

Config.Vehiclekeys = dependencyCheck(vehicleKeys)

--[[
    General and visual configuration, please read each
    comment on each configuration, as it is crucial that
    you understand what you are going to modify.

    If you want the garages to be shared and have slots in
    common you can enable Config.GaragesSync, this way when you
    enter the shell (interior) you will see all the cars in that garage.
]]

Config.BlipSprites = {
    ['plane'] = {
        owned = 423,
        notOwned = 372,
        size = 0.6,
        color = 67
    },
    ['vehicle'] = {
        owned = 357,
        notOwned = 369,
        size = 0.6,
        color = 67
    },
    ['boat'] = {
        owned = 410,
        notOwned = 371,
        size = 0.6,
        color = 67
    },
    ['impound'] = {
        color = 6
    }
}

Config.TransferGaragePrice = 500       -- Price to be charged for taking out a vehicles
Config.GarageSellTax = 1.3             -- Percentage of profit that the person who creates the garage receives when it is sold (by default it is 50% of the total price)
Config.ImpoundPrice = 500              -- Impound default value to remove vehicles
Config.RepairKit = false               -- Enable or disable the 'repairkit' item

Config.DisableBlips = false            -- Disable all blips or show them on your map?
Config.ShortNames = false              -- This config will shorten the names so your blips are much less
Config.startCinematic = 0.5              -- Cinematic Cams being AFK in the garage, it's a beautiful cinematic cam (by default it is 1.3, one and a half minutes)
Config.PlayerToVehicleAnimation = true -- Enable or disable the animation of the player entering the car
Config.SetEntityAlpha = true           -- When he saves the car, he makes animations and degrades the car
Config.GarageSync = true               -- This option will make the garages share the same number of slots and players will see all the cars inside their shell
Config.PersistentVehicles = true       -- Configure if the vehicles are persistent on the map or not
Config.PersistentVehiclesLocked = true -- When persistent vehicles appear, will they be closed or open?
Config.EnablePublicInteriors = true    -- Disable entry to public interiors

--[[
    Music system inside the garage, you can remove this
    feature using false in the Conifg.Sounds or add music
    yourself in html/sounds/, it must be in mp3 format and
    its name must not contain spaces. One of the random
    songs will come out and each player can pause it if enabled.
]]

Config.Sounds = true     -- Enable or disable the music and its Pause button
Config.SoundVolume = 0.1 -- Sound volume (we recommend 0.01-0.05 for ambient)
Config.SoundFiles = {
    'A$AP_Rocky_-_Shittin_Me',
    -- Add more in html/sounds/*.ogg
}

Config.MenuSounds = true -- The menu includes sound effects, choose whether to use them or not

--[[
    In this part we have the jobs configuration, with this you can
    create garages or even have access to the impound command to
    remove garages from the streets. You also have an administrative
    command called mdv, which allows you to delete cars as dv.
]]

Config.AllowedJobs = {
    'mechanic',
    'realestate',
    -- 'realestatejob'
}

Config.ImpoundJobs = {
    'police',
    -- 'sheriff'
}

--[[
    List of garages and impounds available.

    IMPORTANT: Do not change the name of the first Impound as
    that is where the player's cars will go when they go offline
    or are not using them for a long time. The impound and mdv
    command will send them there as well, so you shouldn't rename it.

    We recommend creating each garage on a test basis as the
    cinematic camera and vehicle position is a bit tricky
    to set up if you are not a developer.
]]

Config.Recovery = {
    coords = {
        vec3(408.975830, -1622.887939, 29.279907),
        vec3(944.373657, -463.318665, 61.547241),
    },
    blip = {
        sprite = 67,
        color = 6,
        scale = 0.6,
        name = 'Recovery',
        shortRange = true
    },
    price = 5000
}

Config.Garages = {
    --[[
        Impound Garages, don't delete all of them, you should
        at least leave one created. It is a dependency of this
        system, please do not remove all impound.
    ]]
    ['Hayes Autos'] = {
        owner = true,     -- If it is public, put false
        available = true, -- If it is public, set true
        isImpound = true, -- If it is an impound, set it to false (Only for impound zone)
        type = 'vehicle',
        shell = {
            shell = 1
        },
        coords = {
            menuCoords = vec3(483.75, -1312.29, 29.21),
            spawnCoords = vec4(488.68, -1313.91, 29.26, 294.49),
            polyzone = {
                points = {
                    vec3(398.86, -1278.41, 25.0),
                    vec3(482.58, -1341.67, 25.0),
                    vec3(514.39, -1331.06, 25.0),
                    vec3(491.67, -1268.94, 25.0)
                },
                thickness = 25.0
            }
        },
        vehicleCamera = {
            vehicleCoords = vec4(492.857147, -1317.085693, 28.824951, 260.787415),
            camera = {
                coords = vec3(494.162628, -1320.975830, 29.195557),
                rotation = vec3(-2.0, 2.0, 28.0),
                ped = vec4(494.729675, -1315.925293, 29.246094, 170.259842)
            }
        },
        cinematicCams = {
            vec3(495.230774, -1318.892334, 29.246094),
            vec3(492.065948, -1318.852783, 29.229248)
        }
    },

    --[[
        Garages for cars, there are multiple configured,
        you can customize them, but it requires you to
        change positions and cinematic cam.
    ]]
    --[[['Legion Square'] = {
        owner = true,
        available = true,
        isImpound = false,
        storePrice = 500, -- Price to store a vehicle
        job = false, -- You can give it a job by simply adding 'police' for example
        type = 'vehicle',
        shell = {
            shell = 7 -- Big Public Garage
        },
        coords = {
            menuCoords = vec3(215.446167, -809.802185, 30.728882),
            spawnCoords = vec4(232.931870, -790.087891, 29.454932, 158.740158),
            polyzone = {
                points = {
                    vec3(264.184631, -770.241760, 30.5),
                    vec3(243.956055, -823.094482, 30.5),
                    vec3(200.057144, -805.753845, 30.5),
                    vec3(218.637360, -755.195618, 30.5)
                },
                thickness = 25.0
            },
        },
        vehicleCamera = {
            vehicleCoords = vec4(251.406601, -752.479126, 34.301147, 289.133850),
            camera = {
                coords = vec3(253.793411, -749.169250, 34.421216),
                rotation = vec3(-5.0, 3.0, 168.0),
                ped = vec4(253.806595, -753.534058, 34.638062, 365.826782)
            }
        },
        cinematicCams = {
            vec3(252.817581, -750.540649, 34.421216),
            vec3(250.087921, -751.476929, 34.621216)
        }
    },]]

    --[[
        Boat garages, there are multiple set up, you
        can customize them, but it requires you to
        change positions and cinematic cam.
    ]]
    ['La Puerta Pier'] = {
        owner = true,
        available = true,
        isImpound = false,
        -- storePrice = 5000, -- Price to store a vehicle
        job = false, -- You can give it a job by simply adding 'police' for example
        type = 'boat',
        shell = {
            shell = 1
        },
        coords = {
            menuCoords = vec3(-789.1887, -1490.7750, 1.5952),
            spawnCoords = vec4(-796.127441, -1502.109863, 0.112793, 110.551186),
            polyzone = {
                points = {
                    vec3(-805.951660, -1496.690063, 1.5),
                    vec3(-799.780212, -1513.833008, 1.5),
                    vec3(-777.929688, -1506.158203, 1.5),
                    vec3(-786.026367, -1487.749390, 1.5)
                },
                thickness = 25.0
            }
        },
        vehicleCamera = {
            vehicleCoords = vec4(-794.874695, -1501.833008, 0.348755, 291.968506),
            camera = {
                coords = vec3(-791.525269, -1497.138428, 1.476929),
                rotation = vec3(-5.0, 3.0, 169.0),
                ped = vec4(-793.226379, -1509.336304, 1.578735, 348.661407)
            }
        },
        cinematicCams = {
            vec3(-791.934082, -1499.116455, 0.976929),
            vec3(-799.239563, -1499.432983, 2.476929)
        }
    },

    --[[
        Aircraft hangars, there are multiple configured,
        you can customize them, but it requires you to
        change positions and cinematic cam.
    ]]
    ['Airport Hangar'] = {
        owner = true,
        available = true,
        isImpound = false,
        -- storePrice = 5000, -- Price to store a vehicle
        job = false, -- You can give it a job by simply adding 'police' for example
        type = 'plane',
        shell = {
            shell = 1
        },
        coords = {
            menuCoords = vec3(-940.958252, -2954.043945, 13.929688),
            spawnCoords = vec4(-980.228577, -2997.375732, 12.929688, 59.527554),
            polyzone = {
                points = {
                    vec3(-967.727478, -2915.538574, 13.9),
                    vec3(-908.386841, -2953.595703, 13.9),
                    vec3(-972.474731, -3044.215332, 13.9),
                    vec3(-1020.118652, -3021.468018, 13.9)
                },
                thickness = 25.0
            }
        },
        vehicleCamera = {
            vehicleCoords = vec4(-980.228577, -2997.375732, 12.929688, 59.527554),
            camera = {
                coords = vec3(-985.674744, -2999.604492, 13.929688),
                rotation = vec3(0.0, 2.0, -52.0),
                ped = vec4(-980.571411, -2999.446045, 13.929688, 87.874016)
            }
        },
        cinematicCams = {
            vec3(-990.712097, -2998.734131, 13.929688),
            vec3(-982.008789, -3001.028564, 13.929688)
        }
    },
}

--[[
    Garage section for workers, here you can give a car spot for
    each job, rent or give for free, do it following the example!

    In the case of using qs-gangs, the option to use "gang"
    will be unlocked as follows:

    -- job = 'police', -- Remove job and add gang option
    -- gang = 'families',
]]

Config.JobGarages = {
    {
        job = 'police',
        name = 'police-1',
        grade = 1,
        price = 100, -- Put a price or 0
        coords = {
            menuCoords = vec3(457.9, -1017.28, 28.28),
            spawnCoords = vec4(446.48, -1019.35, 27.55, 91.14),
        },
        vehicles = {
            `police`,
            `police2`,
        },
        liveries = {
            [`police`] = 1
        },
        tuning = {
            [`police`] = {
                modEngine = 3,
                modBrakes = 2,
                modTransmission = 2,
                modSuspension = 3,
                modArmor = true,
                windowTint = 1
            }
        },
        extras = {
            [`police`] = {
                ['1'] = true,
                ['2'] = true,
                ['3'] = true,
                ['4'] = true,
                ['5'] = true,
                ['6'] = true,
                ['7'] = true,
                ['8'] = true,
                ['9'] = true,
                ['10'] = true,
                ['11'] = true,
                ['12'] = true,
                ['13'] = true,
            }
        },
        vehicleCamera = {
            vehicleCoords = vec4(436.694519, -1020.843933, 28.319458, 320.314972),
            camera = {
                coords = vec3(441.257141, -1019.947266, 28.656372),
                rotation = vec3(-3.0, 2.0, 106.0),
                ped = vec4(438.224182, -1021.200012, 28.673218, 291.795288)
            }
        },
        cinematicCams = {
            vec3(440.729675, -1019.327454, 28.706909),
            vec3(438.395599, -1022.175842, 28.622681)
        }
    },
    {
        job = 'ambulance',
        name = 'ambulance-1',
        price = 100, -- Put a price or 0
        coords = {
            menuCoords = vec3(294.356049, -606.052734, 43.315796),
            spawnCoords = vec4(294.356049, -606.052734, 42.315796, 99.212593),
        },
        vehicles = {
            `ambulance`,
        },
        liveries = {
            [`ambulance`] = 3
        },
        tuning = {
            [`ambulance`] = {
                modEngine = 3,
                modBrakes = 2,
                modTransmission = 2,
                modSuspension = 3,
                modArmor = true,
                windowTint = 1
            }
        },
        extras = {},
        vehicleCamera = {
            vehicleCoords = vec4(283.107697, -605.182434, 42.894531, 79.370079),
            camera = {
                coords = vec3(278.268127, -609.507690, 43.412451),
                rotation = vec3(3.0, 2.0, -40.0),
                ped = vec4(282.065948, -606.870300, 43.113525, 127.881889)
            }
        },
        cinematicCams = {
            vec3(280.496704, -607.186829, 43.079834),
            vec3(284.901093, -608.241760, 43.298950)
        }
    },
    {
        job = 'mechanic',
        name = 'mechanic-1',
        price = 100, -- Put a price or 0
        coords = {
            menuCoords = vec3(-192.712082, -1290.448364, 31.285034),
            spawnCoords = vec4(-184.035156, -1290.698853, 30.285034, 175.748032),
        },
        vehicles = {
            `slamtruck`,
            `flatbed`,
        },
        liveries = {
            [`slamtruck`] = 1
        },
        tuning = {
            [`slamtruck`] = {
                modEngine = 3,
                modBrakes = 2,
                modTransmission = 2,
                modSuspension = 3,
                modArmor = true,
                windowTint = 1
            },
            [`flatbed`] = {
                modEngine = 3,
                modBrakes = 2,
                modTransmission = 2,
                modSuspension = 3,
                modArmor = true,
                windowTint = 1
            }
        },
        extras = {},
        vehicleCamera = {
            vehicleCoords = vec4(-197.353851, -1304.004395, 30.981689, 291.968506),
            camera = {
                coords = vec3(-194.782410, -1299.046143, 31.285034),
                rotation = vec3(3.0, 2.0, 170.0),
                ped = vec4(-198.184616, -1302.672485, 31.285034, 325.55)
            }
        },
        cinematicCams = {
            vec3(280.496704, -607.186829, 43.079834),
            vec3(284.901093, -608.241760, 43.298950)
        }
    }
}

--[[
    Default cameras, these cameras and zones are the ones that will
    appear in case of deleting vehicleCamera and cinematicCams, or
    in the players' personal Garages. We recommend leaving them by
    default in case something fails in other garages, this will be
    the alternative camera and zone.
]]

Config.vehicleCamera = {
    vehicleCoords = vec4(-148.628571, -594.474731, 166.723755, 155.905502),
    camera = {
        coords = vec3(-145.780212, -598.232971, 166.993408),
        rotation = vec3(-2.0, 2.0, 51.5),
        ped = vec4(-147.032959, -595.186829, 166.993408, 201.259842)
    },
    cinematicCams = {
        vec3(-147.389008, -596.940674, 167.193408),
        vec3(-145.608795, -594.079102, 166.993408)
    }
}

Config.BoatCamera = {
    vehicleCoords = vec4(-859.648376, -1476.923096, 0.432983, 291.968506),
    camera = {
        coords = vec3(-857.762634, -1471.569214, 1.629272),
        rotation = vec3(-10.0, 2.0, 178.0),
        ped = vec4(-867.006592, -1481.564819, 1.578735, 311.811035)
    },
    cinematicCams = {
        vec3(-858.316467, -1474.628540, 1.176929),
        vec3(-864.567017, -1476.382446, 1.576929)
    }
}

Config.PlaneCamera = {
    vehicleCoords = vec4(1729.635132, 3298.760498, 40.788330, 359.661407),
    camera = {
        coords = vec3(1733.762695, 3303.072510, 41.209473),
        rotation = vec3(-5.0, 2.0, 145.0),
        ped = vec4(1731.098877, 3298.826416, 41.209473, 340.133850)
    },
    cinematicCams = {
        vec3(1732.035156, 3302.742920, 41.709473),
        vec3(1731.468140, 3296.861572, 41.209473)
    }
}

--[[
    The action controls are the ones that are
    set for the creation of Garages, these can
    be modified to be read with their specific
    language, but we do not recommend changing
    their keys for better functionality!
]]

Config.ActionControls = {
    forward = {
        label = 'Forward +/-',
        codes = { 33, 32 }
    },
    right = {
        label = 'Right +/-',
        codes = { 35, 34 }
    },
    up = {
        label = 'Up +/-',
        codes = { 52, 51 }
    },
    add_point = {
        label = 'Add Point',
        codes = { 24 }
    },
    undo_point = {
        label = 'Undo Last',
        codes = { 25 }
    },
    set_position = {
        label = 'Set Position',
        codes = { 24 }
    },
    add_garage = {
        label = 'Add Garage',
        codes = { 24 }
    },
    rotate_z = {
        label = 'RotateZ +/-',
        codes = { 20, 73 }
    },
    rotate_z_scroll = {
        label = 'RotateZ +/-',
        codes = { 17, 16 }
    },
    increase_z = {
        label = 'Z Boundary +/-',
        codes = { 180, 181 }
    },
    decrease_z = {
        label = 'Z Boundary +/-',
        codes = { 21, 180, 181 }
    },
    change_shell = {
        label = 'Next Shell Model',
        codes = { 217 }
    },
    done = {
        label = 'Done',
        codes = { 191 }
    },
    change_player = {
        label = 'Player +/-',
        codes = { 82, 81 }
    },
    select_player = {
        label = 'Select Player',
        codes = { 191 }
    },
    cancel = {
        label = 'Cancel',
        codes = { 194 }
    },
    select_vehicle = {
        label = 'Vehicle +/-',
        codes = { 82, 81 }
    },
    spawn_vehicle = {
        label = 'Spawn Vehicle',
        codes = { 191 }
    },
    leftApt = {
        label = 'Previous Interior',
        codes = { 174 }
    },
    rightApt = {
        label = 'Next Interior',
        codes = { 175 }
    },
    select_menuCoords = {
        label = 'Set Menu Location',
        codes = { 47 }
    },
    select_spawnCoords = {
        label = 'Set Vehicle Spawn Location',
        codes = { 74 }
    },
}

--[[
    Debug mode, this mode is to receive constant prints and information
    from the system, we do not recommend enabling it if you are not a
    developer, but it will help to understand how the resource works.
]]

Config.Debug = false
Config.ZoneDebug = false
--[[

engine stands provide a place for people to build an engine.

--]]

local liftModel = `imp_prop_transmission_lift_01a`
local engineModel = `prop_car_engine_01`

engineStands = {
    testStand1 = {
        characterRestrictions = {
            'ABC:123',
        },
        
        gangRestrictions = {
            level = 5,
        },
        
        groupRestrictions = {
            level = 5,
        },

        position = vector3(142.52, -3034.88, 7.04),

        props = {
            stand = {
                position = vector3(142.52, -3034.88, 6.04),
                heading = 120.0,
                model = liftModel,
            },
            engine = {
                position = vector3(142.52, -3034.88, 7.14),
                heading = 120.0,
                model = engineModel,
            },      
        }
    },

    testStand2 = {
        characterRestrictions = {
            'ABC:123',
        },
        
        gangRestrictions = {
            level = 5,
        },
        
        groupRestrictions = {
            level = 5,
        },

        position = vector3(133.42, -3034.61, 7.04),

        props = {
            stand = {
                position = vector3(133.42, -3034.61, 6.04),
                heading = 90.0,
                model = liftModel,
            },
            engine = {
                position = vector3(133.42, -3034.61, 7.14),
                heading = 90.0,
                model = engineModel,
            },      
        }
    },
}
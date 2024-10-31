--[[

locations for engine cranes/lifts.

--]]

local craneModel = `imp_prop_engine_hoist_02a`

engineLifts = {
    testLift1 = {
        characterRestrictions = {
            'ABC:123',
        },
        
        gangRestrictions = {
            level = 5,
        },
        
        groupRestrictions = {
            level = 5,
        },

        position = vector3(149.28, -3047.68, 7.22),

        props = {
            {
                position = vector3(149.28, -3047.68, 0.22),
                heading = 340.58,
                model = craneModel
            }
        }
    }
}
--[[

define machines to craft recipes

--]]

local cncModel = `gr_prop_gr_cnc_01c`

local recipes

if not config.autoGenerateRecipes then
    recipes = {
        'customAspiration',
        'customBlock',
        'customConrods',
        'customCrankshaft',
        'customExhaust',
        'customFuel',
        'customHeaders',
        'customHeads',
        'customIntake',
        'customIntercooler',
        'customPistons',
        'customValves',
        'customNitrous',
    }
else
    recipes = {}

    for k,v in pairs(EngineItems) do
        table.insert(recipes, k)
    end
end

productionMachines = {
    testMachine1 = {
        characterRestrictions = {
            'ABC:123',
        },
        
        gangRestrictions = {
            level = 5,
        },
        
        groupRestrictions = {
            level = 5,
        },

        position = vector3(122.08, -3041.0, 7.04),

        animation = {
            ad = "pickup_object",
            anim = "putdown_low",
            blendIn = 5.0,
            blendOut = 1.5,
            duration = 1.0,
            flag = 48,
            playbackRate = 0.0,
            lockX = false,
            lockY = false,
            lockZ = false
        },

        recipes = recipes,

        props = {
            {
                position = vector3(122.08, -3041.0, 6.04),
                heading = 90.0,
                model = cncModel,
            },  
        }       
    },
}
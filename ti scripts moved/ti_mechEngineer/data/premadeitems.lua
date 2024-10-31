--[[

premade item definitions for job inventories

--]]

premadeItems = {
    testEngine1 = {
        typeof = "engine",

        name = "Ultimate+",
        variant = "+",

        block = {
            name        = "Ultimate+",

            stats = {
                cylinders   = 6,
                bore        = 86.0,
                stroke      = 86.0,
                material    = "ultimateplus",
                layout      = "inline",
                quality     = 100.0,
            }
        },

        intercooler = {
            name = "Ultimate+ Intercooler",

            stats = {
                size = 500.0,
                material = "ultimateplus",
                quality = 100.0
            }
        },

        aspiration = {
            name = "Ultimate+ Twin Turbos",

            stats = {
                system = "turbocharger",
                method = "twin",
                compressor = 25.0,
                turbine = 40.0,
                compressor2 = 12.0,
                turbine2 = 25.0,
                material = "ultimateplus",
                quality = 100.0
            }
        },

        intake = {
            name = "Ultimate+ Intake",

            stats = {
                system = "performance",
                material = "ultimateplus",
                quality = 100.0
            }
        },

        fuel = {
            name = "Ultimate+ Fuel System",

            stats = {
                system = "injection",
                method = "direct",
                deliver = "per-cylinder",
                quality = 100.0
            }
        },

        heads = {
            name = "Ultimate+ Heads",

            stats = {
                config = "DOHC",
                valves = 4,
                vvl = false,
                material = "ultimateplus",
                quality = 100.0
            }
        },

        valves = {
            name = "Ultimate+ Valves",

            stats = {
                material = "ultimateplus",
                quality = 100.0
            }
        },

        crankshaft = {
            name = "Ultimate+ Crankshaft",

            stats = {
                material = "ultimateplus",
                quality = 100.0,
            }
        },

        conrods = {
            name = "Ultimate+ Conrods",

            stats = {
                length = 86.0,
                material = "ultimateplus",
                quality = 100.0,
            }
        },

        pistons = {
            name = "Ultimate+ Pistons",

            stats = {
                diameter = 86.0,
                material = "ultimateplus",
                quality = 100.0,
            }
        },

        headers = {
            name = "Ultimate+ Headers",

            stats = {
                diameter = 30.0,
                material = "ultimateplus",
                quality = 100.0,
            }
        },

        exhaust = {
            name = "Ultimate+ Exhaust",

            stats = {
                diameter = 50.0,
                material = "ultimateplus",
                quality = 100.0,
            }
        },
    },

    testBlock1 = {      
        typeof = "engineblock",

        name = "2JZ",

        stats = {
            layout = "inline",
            cylinders = 6,
            bore = 86.0,
            stroke = 86.0,
            material = "ultimateplus",
            quality = 100.0,
        }
    },

    testComp1 = {
        typeof = "component",
        component = "valves",

        name = "Ultimate+ Valves",

        stats = {
            quality = 100.0,
            material = "ultimateplus",
        }
    },

    testNitrous1 = {
        typeof = "component",
        component = "nitrous",

        name = "Super Nitrous",

        stats = {
            quality = 100.0,
            size = 100.0,
        }
    }
}
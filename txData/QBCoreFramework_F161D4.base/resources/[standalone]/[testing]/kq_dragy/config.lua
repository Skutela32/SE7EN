Config = {}


-- Whether or not you want to use Imperial units
-- true = Imperial (mph)
-- false = Metric (km/h)
Config.useImperial = true


-- Times that will be logged (this setup is recommended for metric units)
-- I'd recommend speeds like (30, 60, 100, 120, 155) for imperial units
Config.times = {
    {
        speed = 30,
    },
    {
        speed = 60,
    },
    {
        speed = 120,
    },
    {
        speed = 150,
    },
    {
        speed = 180,
    },
    {
        speed = 200,
    }
}

-- Distances that will be logged (this setup is recommended for metric units)
-- I'd recommend distances like (1320, 2640, 5280) for imperial units
Config.distances = {
    {
        distance = 500,
    },
    {
        distance = 1000,
    },
    {
        distance = 2000,
    },
}
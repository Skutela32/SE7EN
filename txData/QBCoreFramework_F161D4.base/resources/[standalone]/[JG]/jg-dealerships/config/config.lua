-- Generated with https://configurator.jgscripts.com at 9/26/2024, 7:09:46 PM

Config = {}
Config.Locale = 'en'
Config.NumberAndDateFormat = 'en-US'
Config.Currency = 'USD'
Config.SpeedUnit = 'mph'
Config.Framework = 'QBCore'
Config.FuelSystem = 'ti_fuel'
Config.VehicleKeys = 'qb-vehiclekeys'
Config.Notifications = 'default'
Config.DrawText = 'jg-textui'
Config.OpenShowroomPrompt = '[E] Open Showroom'
Config.OpenShowroomKeyBind = 38
Config.ViewInShowroomPrompt = '[E] View in Showroom'
Config.ViewInShowroomKeyBind = 38
Config.OpenManagementPrompt = '[E] Dealership Management'
Config.OpenManagementKeyBind = 38
Config.SellVehiclePrompt = '[E] Sell Vehicle'
Config.SellVehicleKeyBind = 38
Config.SpawnVehiclesWithServerSetter = false
Config.FinancePayments = 12
Config.FinanceDownPayment = 0.1
Config.FinanceInterest = 0.1
Config.FinancePaymentInterval = 12
Config.FinancePaymentFailedHoursUntilRepo = 1
Config.MaxFinancedVehiclesPerPlayer = 5
Config.ShowVehicleImages = true
Config.PlateFormat = '1AA111AA'
Config.TestDrivePlate = 'TEST1111'
Config.TestDriveTimeSeconds = 120
Config.TestDriveNotInBucket = false
Config.DisplayVehiclesPlate = 'DEALER'
Config.DisplayVehiclesHidePurchasePrompt = false
Config.DealerPurchasePrice = 0.8
Config.VehicleOrderTime = 1
Config.VehicleColourOptions = {
  {
    label = 'Red',
    hex = '#e81416',
  },
  {
    label = 'Orange',
    hex = '#ff7518',
  },
  {
    label = 'Yellow',
    hex = '#ffbf00',
  },
  {
    label = 'Green',
    hex = '#79c314',
  },
  {
    label = 'Blue',
    hex = '#487de7',
  },
  {
    label = 'Purple',
    hex = '#70369d',
  },
  {
    label = 'Black',
    hex = '#000000',
  },
  {
    label = 'White',
    hex = '#ffffff',
  },
}
Config.Categories = {
  sedans = 'Sedans',
  compacts = 'Compacts',
  motorcycles = 'Motorcycles',
  super = 'Super',
  offroad = 'Offroad',
  helicopters = 'Helicopters',
  coupes = 'Coupes',
  muscle = 'Muscle',
  boats = 'Boats',
  vans = 'Vans',
  sports = 'Sports',
  suvs = 'SUVs',
  commercial = 'Commercial',
  cycles = 'Cycles',
  industrial = 'Industrial',
  start = 'Start',
}
Config.DealershipLocations = {
  Level0 = {
    type = 'self-service',
    openShowroom = {
      coords = vector3(971.01, -2997.66, -3.65),
      size = 5,
    },
    openManagement = {
      coords = vector3(971.01, -2997.66, -3.65),
      size = 5,
    },
    purchaseSpawn = vector4(-768.24, -245.24, 36.83, 203.02),
    testDriveSpawn = '',
    sellVehicle = {
      coords = '',
      size = 5,
    },
    enableSellVehicle = false,
    sellVehiclePercent = 0.6,
    camera = {
      name = 'Custom',
      coords = vector4(1193.06, -3252.6, -49.52, 270.22),
      positions = {
        5,
        8,
        12,
        8,
      },
    },
    categories = {
      'start',
    },
    enableTestDrive = false,
    hideBlip = true,
    blip = {
      id = 326,
      color = 2,
      scale = 0.6,
    },
    enableFinance = false,
    hideMarkers = true,
    markers = {
      id = 21,
      size = {
        x = 0.3,
        y = 0.3,
        z = 0.3,
      },
      color = {
        r = 255,
        g = 255,
        b = 255,
        a = 120,
      },
      bobUpAndDown = 0,
      faceCamera = 0,
      rotate = 1,
      drawOnEnts = 0,
    },
    disableShowroomPurchase = false,
    directSaleDistance = 50,
    job = 'cardealer',
  },
  Level5 = {
    type = 'self-service',
    openShowroom = {
      coords = vector3(971.01, -2997.66, -39.65),
      size = 5,
    },
    openManagement = {
      coords = vector3(971.01, -2997.66, -3.65),
      size = 5,
    },
    purchaseSpawn = vector4(-768.24, -245.24, 36.83, 203.02),
    testDriveSpawn = '',
    sellVehicle = {
      coords = '',
      size = 5,
    },
    enableSellVehicle = false,
    sellVehiclePercent = 0.6,
    camera = {
      name = 'Custom',
      coords = vector4(978.13, -3002.06, -40.02, 89.49),
      positions = {
        5,
        8,
        12,
        8,
      },
    },
    categories = {
      'sedans',
    },
    enableTestDrive = false,
    hideBlip = true,
    blip = {
      id = 326,
      color = 2,
      scale = 0.6,
    },
    enableFinance = false,
    hideMarkers = true,
    markers = {
      id = 21,
      size = {
        x = 0.3,
        y = 0.3,
        z = 0.3,
      },
      color = {
        r = 255,
        g = 255,
        b = 255,
        a = 120,
      },
      bobUpAndDown = 0,
      faceCamera = 0,
      rotate = 1,
      drawOnEnts = 0,
    },
    disableShowroomPurchase = false,
    directSaleDistance = 50,
    job = 'cardealer',
    showroomGangWhitelist = { -- job name and rank
      level = {5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50},
    },
  },
  Level10 = {
    type = 'self-service',
    openShowroom = {
      coords = vector3(520.13, -2611.31, -49.0),
      size = 5,
    },
    openManagement = {
      coords = vector3(520.13, -2611.31, -4.0),
      size = 5,
    },
    purchaseSpawn = vector4(-768.24, -245.24, 36.83, 203.02),
    testDriveSpawn = '',
    sellVehicle = {
      coords = '',
      size = 5,
    },
    enableSellVehicle = false,
    sellVehiclePercent = 0.6,
    camera = {
      name = 'Custom',
      coords = vector4(519.88, -2623.76, -49.41, 180.63),
      positions = {
        5,
        8,
        12,
        8,
      },
    },
    categories = {
      'sedans',
    },
    enableTestDrive = false,
    hideBlip = true,
    blip = {
      id = 326,
      color = 2,
      scale = 0.6,
    },
    enableFinance = false,
    hideMarkers = false,
    markers = {
      id = 21,
      size = {
        x = 0.3,
        y = 0.3,
        z = 0.3,
      },
      color = {
        r = 255,
        g = 255,
        b = 255,
        a = 120,
      },
      bobUpAndDown = 0,
      faceCamera = 0,
      rotate = 1,
      drawOnEnts = 0,
    },
    disableShowroomPurchase = false,
    directSaleDistance = 50,
    job = 'cardealer',
    showroomGangWhitelist = { -- job name and rank
      level = {10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50},
    },
  },
  Level15 = {
    type = 'self-service',
    openShowroom = {
      coords = vector3(-190.63, -582.78, 136.0),
      size = 5,
    },
    openManagement = {
      coords = vector3(-190.63, -582.78, 1.0),
      size = 5,
    },
    purchaseSpawn = vector4(-768.24, -245.24, 36.83, 203.02),
    testDriveSpawn = '',
    sellVehicle = {
      coords = '',
      size = 5,
    },
    enableSellVehicle = false,
    sellVehiclePercent = 0.6,
    camera = {
      name = 'Custom',
      coords = vector4(-173.28, -583.94, 146.28, 34.17),
      positions = {
        5,
        8,
        12,
        8,
      },
    },
    categories = {
      'sedans',
    },
    enableTestDrive = false,
    hideBlip = true,
    blip = {
      id = 326,
      color = 2,
      scale = 0.6,
    },
    enableFinance = false,
    hideMarkers = false,
    markers = {
      id = 21,
      size = {
        x = 0.3,
        y = 0.3,
        z = 0.3,
      },
      color = {
        r = 255,
        g = 255,
        b = 255,
        a = 120,
      },
      bobUpAndDown = 0,
      faceCamera = 0,
      rotate = 1,
      drawOnEnts = 0,
    },
    disableShowroomPurchase = false,
    directSaleDistance = 50,
    job = 'cardealer',
    showroomGangWhitelist = { -- job name and rank
      level = {15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50},
    },
  },
}
Config.MyFinanceCommand = 'myfinance'
Config.DirectSaleCommand = 'directsale'
Config.DealerAdminCommand = 'dealeradmin'
Config.ReturnToPreviousRoutingBucket = false
Config.Logging = false

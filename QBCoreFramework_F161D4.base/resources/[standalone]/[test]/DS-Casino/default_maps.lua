if DS_Casino_System_Main_Config.MapType == 'AUTODETECT' then

    local mapFound = false

    for k,v in pairs(DS_Casino_System_Main_Config.MapNames) do
        if GetResourceState(k) ~= 'missing' then
            mapFound = true
            DS_Casino_System_Main_Config.MapType = v
            if IsDuplicityVersion() then
                print('\27[0;31m[DS-Casino] \27[0;33mUsing '..k..' map configuration')
            end
            break
        end
    end

    if not mapFound then
        if IsDuplicityVersion() then
            print('\27[0;31m[DS-Casino] \27[0;33mUsing IPL map configuration')
        end
        DS_Casino_System_Main_Config.MapType = 0
    end

end


if DS_Casino_System_Main_Config.MapType == 0 then

    ----------------------------------------------------------
    ----------------------------------------------------------
    -----------------------IPL COORDS-------------------------
    ----------------------------------------------------------
    ----------------------------------------------------------

    --TELEPORT
    TeleportFromCoords = vec3(935.924, 47.001, 81.095)
    TeleportToCoords = vec3(1089.655, 206.160, -48.999)

    --CASINO AREA
    CASINO_AREA_MIN = vec3(1089.675, 206.0661, -48.99972)
    CASINO_AREA_MAX = vec3(1192.385, 330.2569, -52.84082)

    --BLACKJACK
    BJ_TABLES = {
        {
            coords = vector4(1148.837,269.747,-52.84,220.0),
            highStakes = false
        },
        {
            coords = vector4(1151.84,266.747,-52.84, 50.2),
            highStakes = false
        },
        {
            coords = vector4(1144.429,247.3352,-52.04, 120.13),
            highStakes = false
        },
        {
            coords = vector4(1129.406,262.3578,-52.04, 130.63),
            highStakes = false
        },
    }

    --POKER
    POKER_TABLES = {
        [1] = {
            Position = vector3(1143.338, 264.2453, -52.8409),
            Heading = -135.0,
        },
        [2] = {
            Position = vector3(1146.329, 261.2543, -52.8409),
            Heading = 45.0,
        },
        [3] = {
            Position = vector3(1133.74, 266.6947, -52.0409),
            Heading = -45.0,
        },
        [4] = {
            Position = vector3(1148.74, 251.6947, -52.0409),
            Heading = -45.0,
        }
    }

    --ROULETTE
    ROULETTE_TABLES = {
        [0] = {
            position = vector3(1150.718505859375, 262.52783203125, -52.840850830078125),
            rot = -45.0,
            createOBJ = true
        },
        [1] = {
            position = vector3(1144.732421875, 268.14117431640625, -52.840850830078125),
            rot = 135.0,
            createOBJ = true
        },
        [2] = {
            position = vector3(1133.68115234375, 262.01678466796875, -52.03075408935547),
            rot = -156.0,
            createOBJ = true
        },
        [3] = {
            position = vector3(1129.53955078125, 267.06097412109375, -52.03075408935547),
            rot = 26.0,
            createOBJ = true
        }
    }

    --LUCKY WHEEL
    DS_Casino_System_LuckWheel.WheelPos = vec3(1111.0544824219, 229.85824584961, -50.387653320312)
    DS_Casino_System_LuckWheel.Heading = 0.0

    DS_Casino_System_LuckWheel.VehiclePos = vec3(1099.5923095703, 219.59890441895, -48.951708984375)
    DS_Casino_System_LuckWheel.VehHeading = 323.14959716797

    --SECURITY CAMERAS
    CasinoCams = {
        {label = 'Security Camera [1]', x = 1106.952, y = 203.059, z = -47.22, r = {x = -25.0, y = 0.0, z = -10.0}, canRotate = true},
        {label = 'Security Camera [2]', x = 1087.275, y= 221.701, z= -46.99, r = {x = -25.0, y = 0.0, z = -150.0}, canRotate = true},
        {label = 'Security Camera [3]', x = 1117.416, y= 233.488, z= -46.03, r = {x = -25.0, y = 0.0, z = 150.0}, canRotate = true},
        {label = 'Security Camera [4]', x = 1103.889, y= 233.754, z= -46.33, r = {x = -25.0, y = 0.0, z = -110.0}, canRotate = true},
    }

    --SECURITY CAMERA ACCESS
    coordinate_cameras = vec3(1111.9616699219,242.28337097168,-45.831020355225)

    --CASHIER
    cashier_coords = vec3(1117.761, 220.0465, -50.43518)
    cashier_heading = 92.46362

    --CASHIER INTERACTION
    coordinate_shop = vec3(1115.8055419922,219.99226379395,-49.435104370117)

    --BOSS MENU
    coordinate_society = vec3(1113.5395507812,243.33546447754,-45.831027984619)

    --BOSS ELEVATOR
    DS_Casino_System_Main_Config.SocietyEnterCoords = vec3(1119.4034423828,266.99438476562,-51.040729522705)
    DS_Casino_System_Main_Config.SocietyExitCoords = vec3(1107.2357177734,243.08892822266,-45.841041564941)

    --BARTENDER
    bartender_ped_coords = vec4(1110.189, 208.3011, -50.44007, 85.09562)

    --BARTENDER INTERACTION
    bartender_buy_coords = vec3(1108.327, 208.4823, -49.44007)
    

elseif DS_Casino_System_Main_Config.MapType == 1 then

    ----------------------------------------------------------
    ----------------------------------------------------------
    --------------------UNCLEJUST COORDS----------------------
    ----------------------------------------------------------
    ----------------------------------------------------------

    --CASINO AREA
    CASINO_AREA_MIN = vec3(917.2999, 11.4262, 69.3906)
    CASINO_AREA_MAX = vec3(1008.9715, 87.1460, 81.4528)

    --BLACKJACK
    BJ_TABLES = {
		{
			coords = vec4(989.037842, 45.724503, 69.232689,27.69),
			highStakes = false
		},
		{
			coords = vec4(987.268433, 42.203384, 69.232689,102.69),
			highStakes = false
		},
		{
			coords = vec4(982.489258, 62.903976, 69.232689,102.69),
			highStakes = false
		},
		{
			coords = vec4(985.903687, 60.559368, 69.232689,182.69),
			highStakes = false
		},
		{
			coords = vec4(991.464966, 40.094330, 69.232758,202.99),
			highStakes = false
		},
		{
			coords = vec4(993.234436, 43.616028, 69.232758,282.99),
			highStakes = false
		},
		{
			coords = vec4(988.462463, 64.285561, 69.232758,282.99),
			highStakes = false
		},
	}

    --POKER
    POKER_TABLES = {
        [1] = {
            Position = vector3(985.048096, 66.630257, 69.232758),
            Heading = 10.0,
        },
        [2] = {
            Position = vector3(994.909546, 58.218338, 68.432755),
            Heading = 62.99,
        },
        [3] = {
            Position = vector3(996.348633, 51.735916, 68.432755),
            Heading = 143.0,
        },
        [4] = {
            Position = vector3(998.439453, 61.031857, 68.432755),
            Heading = 12.99,
        },
        [5] = {
            Position = vector3(1000.784363, 51.024963, 68.432755),
            Heading = 198.0,
        },
        [6] = {
            Position = vector3(1004.033508, 53.287384, 68.432755),
            Heading = 237.69,
        },
        [7] = {
            Position = vector3(1002.382996, 60.507927, 68.43275),
            Heading = 332.99,
        },
    }

    --ROULETTE
    ROULETTE_TABLES = {
        [0] = {
            position = vector3(982.164490, 52.203957, 69.232758),
            rot = -77.0
        },
        [1] = {
            position = vector3(984.302185, 55.935375, 69.232750),
            rot = -17.0
        },
        [2] = {
            position = vector3(985.912476, 49.010471, 69.232750),
            rot = -134.0
        },
        [3] = {
            position = vector3(998.973755, 57.771679, 68.432755),
            rot = 12.99
        },
        [4] = {
            position = vector3(999.885925, 54.403343, 68.432755),
            rot = 193.0
        },
        [5] = {
            position = vector3(1004.790466, 57.295071, 68.432755),
            rot = -76.0
        }
    }

    --LUCKY WHEEL
    DS_Casino_System_LuckWheel.WheelPos = vec3(949.696777, 45.061569, 70.902759)
    DS_Casino_System_LuckWheel.Heading = 328.0

    DS_Casino_System_LuckWheel.VehiclePos = vec3(935.2482, 42.05891, 72.52502)
    DS_Casino_System_LuckWheel.VehHeading = 323.14959716797

    --SECURITY CAMERAS
    CasinoCams = {
        {label = 'Security Camera [1]', x = 930.7499, y = 24.20931, z = 74.81363, r = {x = -25.0, y = 0.0, z = -10.0}, canRotate = true},
        {label = 'Security Camera [2]', x = 925.0844, y= 50.63322, z= 74.93362, r = {x = -25.0, y = 0.0, z = -150.0}, canRotate = true},
        {label = 'Security Camera [3]', x = 957.2133, y= 44.99361, z= 75.59361, r = {x = -25.0, y = 0.0, z = 150.0}, canRotate = true},
        {label = 'Security Camera [4]', x = 945.764, y= 51.60017, z= 75.55227, r = {x = -25.0, y = 0.0, z = -110.0}, canRotate = true},
    }

    --SECURITY CAMERA ACCESS
    coordinate_cameras = vec3(955.6161, 56.31638, 75.44257)

    --CASHIER
    cashier_coords = vec3(950.2056, 33.19991, 70.83865)
    cashier_heading = 61.43949

    --CASHIER INTERACTION
    coordinate_shop = vec3(948.4368, 34.27612, 71.83847)

    --BOSS MENU
    coordinate_society = vec3(958.7286, 55.33342, 75.44257)

    --BOSS ELEVATOR
    DS_Casino_System_Main_Config.SocietyEnterCoords = vec3(976.4675, 72.13677, 70.23302)
    DS_Casino_System_Main_Config.SocietyExitCoords = vec3(953.4098, 58.42959, 75.43271)

    --BARTENDER
    bartender_ped_coords = vec4(937.5328, 27.42052, 70.8336, 50.19481)

    --BARTENDER INTERACTION
    bartender_buy_coords = vec3(936.1797, 28.32926, 71.83359)

elseif DS_Casino_System_Main_Config.MapType == 2 then

    ----------------------------------------------------------
    ----------------------------------------------------------
    ----------------------K4MB1 COORDS------------------------
    ----------------------------------------------------------
    ----------------------------------------------------------

    --CASINO AREA
    CASINO_AREA_MIN = vector3(914.8056, -20.244785, 61.0004)
    CASINO_AREA_MAX = vector3(1022.77368, 98.0451, 102.6206)

    --BLACKJACK
    BJ_TABLES = {
		{
			coords = vec4(942.256287, 43.202755, 79.984848, 328.0),
			highStakes = false
		},
		{
			coords = vec4(958.044739, 67.729248, 80.001709,238.0),
			highStakes = false
		},
		{
			coords = vec4(962.054871, 32.244377, 79.990959,18.0),
			highStakes = false
		},
		{
			coords = vec4(999.103882, 57.560318, 79.992203,238.0),
			highStakes = false
		},
		{
			coords = vec4(992.494507, 72.989578, 79.990997,238.0),
			highStakes = false
		},
		{
			coords = vec4(996.231567, 52.963623, 79.992149,238.0),
			highStakes = false
		},
		{
			coords = vec4(1001.859802, 61.970665, 79.992256,238.0),
			highStakes = false
		},
	}

    --POKER
    POKER_TABLES = {
        [1] = {
            Position = vector3(991.848511, 62.164890, 79.980583),
            Heading = 58.0,
        },
        [2] = {
            Position = vector3(985.126892, 77.553665, 79.990997),
            Heading = 58.0,
        },
        [3] = {
            Position = vector3(937.543640, 35.660934, 79.985603),
            Heading = 328.0,
        },
        [4] = {
            Position = vector3(994.685547, 66.705116, 79.980530),
            Heading = 58.0,
        },
        [5] = {
            Position = vector3(988.996399, 57.600464, 79.980637),
            Heading = 58.0,
        },
    }

    --ROULETTE
    ROULETTE_TABLES = {
        [0] = {
            position = vector3(995.150513, 59.659710, 79.992401),
            rot = 58.0
        },
        [1] = {
            position = vector3(988.979065, 75.723068, 79.990997),
            rot = 238.0
        },
        [2] = {
            position = vector3(939.290100, 39.517464, 79.999550),
            rot = 328.0
        },
        [3] = {
            position = vector3(947.808960, 65.059799, 79.988319),
            rot = 58.0
        },
        [4] = {
            position = vector3(973.68, 57.30, 80.00),
            rot = 328.0
        },
        [5] = {
            position = vector3(979.282715, 53.806145, 79.998802),
            rot = 328.0
        },
        [6] = {
            position = vector3(997.984680, 64.195343, 79.992317),
            rot = 58.0
        },
        [7] = {
            position = vector3(992.331299, 55.148121, 79.992485),
            rot = 58.0
        }
    }

    --LUCKY WHEEL
    DS_Casino_System_LuckWheel.WheelPos = vec3(964.643250, 49.322929, 80.826282)
    DS_Casino_System_LuckWheel.Heading = 58.0

    DS_Casino_System_LuckWheel.VehiclePos = vec3(970.0049, 46.02151, 81.57808)
    DS_Casino_System_LuckWheel.VehHeading = 244.3798

    --SECURITY CAMERAS
    CasinoCams = {
        {label = 'Security Camera [1]', x = 986.7656, y = 35.7915, z = 83.85557, r = {x = -25.0, y = 0.0, z = -10.0}, canRotate = true},
        {label = 'Security Camera [2]', x = 992.3175, y= 44.27831, z= 83.85557, r = {x = -25.0, y = 0.0, z = 10.0}, canRotate = true},
        {label = 'Security Camera [3]', x = 961.1249, y= 34.01469, z= 83.85557, r = {x = -25.0, y = 0.0, z = 200.0}, canRotate = true},
        {label = 'Security Camera [4]', x = 985.8787, y= 59.79046, z=  83.91557, r = {x = -25.0, y = 0.0, z = -10.0}, canRotate = true},
        {label = 'Security Camera [5]', x = 981.665, y= 77.73085, z=  83.91557, r = {x = -25.0, y = 0.0, z = 100.0}, canRotate = true},
    }

    --SECURITY CAMERA ACCESS
    coordinate_cameras = vec3(932.8739, 12.39077, 81.11618)

    --CASHIER
    cashier_coords = vec3(965.6171, 23.9498, 80.006)
    cashier_heading = 325.5721

    --CASHIER INTERACTION
    coordinate_shop = vec3(966.5481, 25.62634, 81.00614)

    --BOSS MENU
    coordinate_society = vec3(933.059, 14.42959, 81.10593)

    --BOSS ELEVATOR
    DS_Casino_System_Main_Config.SocietyEnterCoords = nil
    DS_Casino_System_Main_Config.SocietyExitCoords = nil

    --BARTENDER
    bartender_ped_coords = vec4(975.0157, 19.72463, 80.00061, 63.09737)

    --BARTENDER INTERACTION
    bartender_buy_coords = vec3(973.8675, 20.53766, 81.00066)

elseif DS_Casino_System_Main_Config.MapType == 3 then

    ----------------------------------------------------------
    ----------------------------------------------------------
    ----------------------GABZ COORDS-------------------------
    ----------------------------------------------------------
    ----------------------------------------------------------

    --CASINO AREA
    CASINO_AREA_MIN = vec3(957.886047, 9.164070, 69.017921)
    CASINO_AREA_MAX = vec3(1049.557617, 84.883873, 81.080116)

    --BLACKJACK
    BJ_TABLES = {
		{
			coords = vec4(1043.424, 56.797, 68.060, 193.465),
			highStakes = false
		},
		{
			coords = vec4(1035.850, 55.024, 68.060, 193.156),
			highStakes = false
		},
		{
			coords = vec4(1044.392, 52.664, 68.060, 13.465),
			highStakes = false
		},
		{
			coords = vec4(1036.812, 50.905, 68.060, 13.156),
			highStakes = false
		},
		{
			coords = vec4(1028.989, 62.169, 68.860, 283.156),
			highStakes = false
		},
		{
			coords = vec4(1023.019, 60.771, 68.860, 103.466),
			highStakes = false
		},
		{
			coords = vec4(1033.817, 41.512, 68.860, 283.156),
			highStakes = false
		},
		{
			coords = vec4(1027.855, 40.083, 68.860, 103.466),
			highStakes = false
		},
	}

    --POKER
    POKER_TABLES = {
        [1] = {
            Position = vector3(1031.918, 37.472, 68.860),
            Heading = 200.0,
            createOBJ = true
        },
        [2] = {
            Position = vector3(1041.376587, 49.616318, 68.053756),
            Heading = 0.0,
            createOBJ = true
        },
        [3] = {
            Position = vector3(1039.061, 58.88707, 68.06025),
            Heading = 200.0,
            createOBJ = true
        },
        [4] = {
            Position = vector3(1026.372, 57.88501, 68.860),
            Heading = 150.0,
            createOBJ = true
        },
    }

    --ROULETTE
    ROULETTE_TABLES = {
        [0] = {
            position = vector3(1029.345, 44.0301, 68.86569),
            rot = 60.0,
            createOBJ = true
        },
        [1] = {
            position = vector3(1025.318, 64.58222, 68.860077),
            rot = 0.0,
            createOBJ = true
        },
        [2] = {
            position = vector3(1024.628540, 52.756798, 68.860077),
            rot = 140.0 --fatt
        },
        [3] = {
            position = vector3(1025.802246, 47.740795, 68.860077),
            rot = -140.0 --fatt
        },
        [4] = {
            position = vector3(1040.004, 53.91388, 68.06021),
            rot = -140.0, --fatt
            createOBJ = true
        }
    }

    --LUCKY WHEEL
    DS_Casino_System_LuckWheel.WheelPos = vec3(990.270874, 42.829438, 70.52)
    DS_Casino_System_LuckWheel.Heading = 328.0

    DS_Casino_System_LuckWheel.VehiclePos = vec3(975.7187, 40.33813, 72.15234)
    DS_Casino_System_LuckWheel.VehHeading = 282.0461

    --SECURITY CAMERAS
    CasinoCams = {
        {label = 'Security Camera [1]', x = 971.6186, y = 21.46369, z = 74.91978, r = {x = -25.0, y = 0.0, z = -10.0}, canRotate = true},
        {label = 'Security Camera [2]', x = 998.2542, y= 42.09169, z= 74.85979, r = {x = -25.0, y = 0.0, z = 10.0}, canRotate = true},
        {label = 'Security Camera [3]', x = 986.4754, y= 49.58843, z= 74.85979, r = {x = -25.0, y = 0.0, z = 200.0}, canRotate = true},
        {label = 'Security Camera [4]', x = 965.6356, y= 48.02641, z= 74.49994, r = {x = -25.0, y = 0.0, z = 180.0}, canRotate = true},
    }

    --SECURITY CAMERA ACCESS
    coordinate_cameras = vec3(997.5077, 52.86699, 75.06965)

    --CASHIER
    cashier_coords = vec3(990.7271, 31.55694, 70.4662)
    cashier_heading = 49.71656

    --CASHIER INTERACTION
    coordinate_shop = vec3(989.6456, 32.34665, 71.46609)

    --BOSS MENU
    coordinate_society = vec3(999.3372, 53.3801, 75.06965)

    --BOSS ELEVATOR
    DS_Casino_System_Main_Config.SocietyEnterCoords = vec3(1017.135, 70.16774, 69.86058)
    DS_Casino_System_Main_Config.SocietyExitCoords = vec3(993.8678, 56.22727, 75.05975)

    --BARTENDER
    bartender_ped_coords = vec4(978.2695, 25.3273, 70.46104, 37.69169)

    --BARTENDER INTERACTION
    bartender_buy_coords = vec3(977.3015, 26.65114, 71.46102)

elseif DS_Casino_System_Main_Config.MapType == 4 then

    ----------------------------------------------------------
    ----------------------------------------------------------
    ---------------------CUSTOM COORDS------------------------
    ----------------------------------------------------------
    ----------------------------------------------------------

    --CASINO AREA
    CASINO_AREA_MIN = custom_casino_area_min
    CASINO_AREA_MAX = custom_casino_area_max

    --BLACKJACK
    BJ_TABLES = BlackJackTables

    --POKER
    POKER_TABLES = PokerTables

    --ROULETTE
    ROULETTE_TABLES = RouletteTables

    --LUCKY WHEEL
    DS_Casino_System_LuckWheel.WheelPos = custom_luckywheel_pos
    DS_Casino_System_LuckWheel.Heading = custom_luckywheel_heading

    DS_Casino_System_LuckWheel.VehiclePos = custom_luckywheel_vehicle_pos
    DS_Casino_System_LuckWheel.VehHeading = custom_luckywheel_vehicle_heading

    if not IsDuplicityVersion() then
        DS_Casino_System_LuckWheel.CreateBase = true
    end

    --SECURITY CAMERAS
    CasinoCams = custom_cctv

    --SECURITY CAMERA ACCESS
    coordinate_cameras = custom_open_cam_coords

    --CASHIER
    cashier_coords = custom_cashier_pos
    cashier_heading = custom_cashier_heading

    --CASHIER INTERACTION
    coordinate_shop = custom_buy_chips_coords

    --BOSS MENU
    coordinate_society = custom_society_coords
    
    --BOSS ELEVATOR
    DS_Casino_System_Main_Config.SocietyEnterCoords = custom_elevator_coords_enter
    DS_Casino_System_Main_Config.SocietyExitCoords = custom_elevator_coords_exit

    --BARTENDER
    bartender_ped_coords = custom_bartender_ped_coords

    --BARTENDER INTERACTION
    bartender_buy_coords = custom_bartender_buy_coords

elseif DS_Casino_System_Main_Config.MapType == 5 then

    ----------------------------------------------------------
    ----------------------------------------------------------
    --------------------FREE MAP COORDS-----------------------
    ----------------------------------------------------------
    ----------------------------------------------------------

    --CASINO AREA
    CASINO_AREA_MIN = vec3(907.347, 9.715462, 75.35622)
    CASINO_AREA_MAX = vec3(1065.686, 112.9373, 73.31612)

    --BLACKJACK
    BJ_TABLES = {
		{
			coords = vector4(1028.927, 56.66867, 71.47628, 200.0),
			highStakes = false,
			rot = 200.0,
			createOBJ = true
		},
		{
			coords = vector4(1026.726, 66.33639, 71.47616, 8.745528),
			highStakes = false,
			rot = 8.745528,
			createOBJ = true
		},
		{
			coords = vector4(1027.922, 61.27776, 71.47617, 102.7093),
			highStakes = false,
			rot = 102.7093,
			createOBJ = true
		},
		{
			coords = vector4(1020.098, 45.59623, 72.28162, 223.4124),
			highStakes = false,
			rot = 223.4124,
			createOBJ = true
		},
		{
			coords = vector4(1015.583130, 47.486618, 72.276039, 103.30353546143),
			highStakes = false
		},
	}

    --POKER
    POKER_TABLES = {
        [1] = {
            Position = vector3(1023.620239, 62.404610, 71.476105),
            Heading = 192.99417114258
        },
        [2] = {
            Position = vector3(1024.571289, 58.282974, 71.476105),
            Heading = 12.994029998779
        },
        [3] = {
            Position = vector3(1021.549255, 48.898643, 72.276108),
            Heading = 282.99420166016
        },
        [4] = {
            Position = vec3(1013.78, 72.06754, 72.28123),
            Heading = 358.4074,
            createOBJ = true
        },
        [5] = {
            Position = vec3(1013.992, 65.53654, 72.28144),
            Heading = 180.1299,
            createOBJ = true
        },
    }

    --ROULETTE
    ROULETTE_TABLES = {
        [0] = {
            position = vector3(1031.199219, 64.155624, 71.476105),
            rot = 193.30345153809
        },
        [1] = {
            position = vector3(1032.155884, 60.019897, 71.476105),
            rot = 13.303451538086
        },
        [2] = {
            position = vector3(1010.806152, 68.187683, 72.276039),
            rot = 103.30353546143
        },
        [3] = {
            position = vector3(1016.779480, 69.568672, 72.276108),
            rot = 282.99420166016
        },
        [4] = {
            position = vec3(1016.999, 50.97293, 72.28139),
            rot = 33.78519,
            createOBJ = true
        },
    }

    --LUCKY WHEEL
    DS_Casino_System_LuckWheel.WheelPos = vec3(978.0117, 50.34866, 73.95611)
    DS_Casino_System_LuckWheel.Heading = 328.0

    DS_Casino_System_LuckWheel.VehiclePos = vec3(963.8385, 48.03989, 75.56835)
    DS_Casino_System_LuckWheel.VehHeading = 130.9395

    --SECURITY CAMERAS
    CasinoCams = {
        {label = 'Security Camera [1]', x = 953.4702, y= 55.84264, z= 77.51651, r = {x = -25.0, y = 0.0, z = -170.0}, canRotate = true},
        {label = 'Security Camera [2]', x = 959.8735, y= 29.43227, z= 77.33652, r = {x = -25.0, y = 0.0, z = -50.0}, canRotate = true},
        {label = 'Security Camera [3]', x = 985.2531, y= 49.98455, z= 77.51651, r = {x = -25.0, y = 0.0, z = 100.0}, canRotate = true},
        {label = 'Security Camera [4]', x = 974.2866, y= 57.13958, z= 77.7565, r = {x = -25.0, y = 0.0, z = 180.0}, canRotate = true},
    }

    --SECURITY CAMERA ACCESS
    coordinate_cameras = vec3(985.3298, 60.32089, 78.48592)

    --CASHIER
    cashier_coords = vec3(978.034, 38.69371, 73.882)
    cashier_heading = 56.84942

    --CASHIER INTERACTION
    coordinate_shop = vec3(977.0706, 39.32931, 74.8822)

    --BOSS MENU
    coordinate_society = vec3(987.4482, 60.29722, 78.47607)

    --BOSS ELEVATOR
    DS_Casino_System_Main_Config.SocietyEnterCoords = vec3(1004.742, 77.39512, 73.27634)
    DS_Casino_System_Main_Config.SocietyExitCoords = vec3(981.94, 63.60758, 78.47607)

    --BARTENDER
    bartender_ped_coords = vec4(1110.189, 208.3011, -50.44007, 85.09562)

    --BARTENDER INTERACTION
    bartender_buy_coords = vec3(1108.327, 208.4823, -49.44007)

elseif DS_Casino_System_Main_Config.MapType == 6 then

    ----------------------------------------------------------
    ----------------------------------------------------------
    ---------------PATOCHE UNDERGROUND COORDS-----------------
    ----------------------------------------------------------
    ----------------------------------------------------------

    --CASINO AREA
    CASINO_AREA_MIN = vec3(1067.406, -2329.351, 20.3259)
    CASINO_AREA_MAX = vec3(1131.168, -2292.218, 26.30586)

    --BLACKJACK
    BJ_TABLES = {
		{
			coords = vector4(1102.663, -2316.213, 23.46, 178.0),
			highStakes = false
		},
        {
			coords = vector4(1089.658, -2325.651, 23.46, -94.0),
			highStakes = false
		},
	}

    --POKER
    POKER_TABLES = {
        [1] = {
            Position = vector3(1099.589, -2319.677, 23.46),
            Heading = -3.99
        },
        [2] = {
            Position = vector3(1090.047, -2315.048, 23.46),
            Heading = -93.99
        },
    }

    --ROULETTE
    ROULETTE_TABLES = {
        [0] = {
            position = vector3(1095.457, -2315.659, 23.46),
            rot = 86.99
        },
        [1] = {
            position = vector3(1106.301, -2319.073, 23.46),
            rot = -94.0
        },
        [2] = {
            position = vector3(1085.867, -2323.123, 23.46),
            rot = 177.0
        },
    }

    --LUCKY WHEEL
    DS_Casino_System_LuckWheel.WheelPos = vec3(1076.43, -2316.934, 23.72)
    DS_Casino_System_LuckWheel.Heading = 84.99

    DS_Casino_System_LuckWheel.VehiclePos = false
    DS_Casino_System_LuckWheel.VehHeading = false

    --SECURITY CAMERAS
    CasinoCams = {
        {label = 'Security Camera [1]', x = 1105.388, y= -2323.948, z= 27.45396, r = {x = -25.0, y = 0.0, z = 0.0}, canRotate = true},
        {label = 'Security Camera [2]', x = 1077.285, y= -2310.703, z= 27.45399, r = {x = -25.0, y = 0.0, z = -150.0}, canRotate = true},
    }

    --SECURITY CAMERA ACCESS
    coordinate_cameras = vec3(1120.647, -2308.529, 24.4075)

    --CASHIER
    cashier_coords = vec3(1104.98, -2309.264, 23.45648)
    cashier_heading = 180.0169

    --CASHIER INTERACTION
    coordinate_shop = vec3(1104.857, -2310.87, 24.45401)

    --BOSS MENU
    coordinate_society = vec3(1121.884, -2306.019, 24.42442)

    --BOSS ELEVATOR
    DS_Casino_System_Main_Config.SocietyEnterCoords = nil
    DS_Casino_System_Main_Config.SocietyExitCoords = nil

    --BARTENDER
    bartender_ped_coords = vec4(1113.41, -2317.311, 23.454, 85.76348)

    --BARTENDER INTERACTION
    bartender_buy_coords = vec3(1111.716, -2317.187, 24.454)
elseif DS_Casino_System_Main_Config.MapType == 7 then

    ----------------------------------------------------------
    ----------------------------------------------------------
    -------------TSTUDIO JURASSIC CASINO COORDS---------------
    ----------------------------------------------------------
    ----------------------------------------------------------

    --CASINO AREA
    CASINO_AREA_MIN = vector3(-277.922, -945.533, 2.12)
    CASINO_AREA_MAX = vector3(-220.567, -884.040, 64.78)

    --BLACKJACK
    BJ_TABLES = {
        {
			coords = vector4(-252.01, -905.90, 31.31, 319.24),
			highStakes = false
		},
        {
			coords = vector4(-258.07, -916.20, 31.31, 131.85),
			highStakes = false
		},
        {
			coords = vector4(-241.90, -924.30, 31.31, 36.55),
			highStakes = false
		},
        {
			coords = vector4(-264.80, -913.43, 45.27, 250.01),
			highStakes = false
		},
	}

    --POKER
    POKER_TABLES = {
        [1] = {
            Position = vec3(-261.54, -917.01, 31.31),
            Heading = 283.20
        },
        [2] = {
            Position = vec3(-257.04, -905.64, 31.31),
            Heading = 218.93
        },
        [3] = {
            Position = vec3(-237.66, -913.00, 31.31),
            Heading = 100.59
        },
    }

    --ROULETTE
    ROULETTE_TABLES = {
        [0] = {
            position = vector3(-256.21, -909.79, 31.31),
            rot = 340.01
        },
        [1] = {
            position = vector3(-242.84, -909.23, 31.31),
            rot = 345.78
        },
    }

    --LUCKY WHEEL

    if not IsDuplicityVersion() then
        DS_Casino_System_LuckWheel.CreateBase = true
    end

    DS_Casino_System_LuckWheel.WheelPos = vec3(-247.98, -906.79, 31.60)
    DS_Casino_System_LuckWheel.Heading = 340.01

    DS_Casino_System_LuckWheel.VehiclePos = false
    DS_Casino_System_LuckWheel.VehHeading = false

    --SECURITY CAMERAS
    CasinoCams = {
        {label = 'Security Camera [1]', x = -269.0469, y= -915.5743, z= 37.58173, r = {x = -25.0, y = 0.0, z = -65.0}, canRotate = true},
        {label = 'Security Camera [2]', x = -233.041, y= -921.1952, z= 36.38171, r = {x = -25.0, y = 0.0, z = 65.0}, canRotate = true},
    }

    --SECURITY CAMERA ACCESS
    coordinate_cameras = vec3(-231.4299, -914.0681, 32.31423)

    --CASHIER
    cashier_coords = vec3(-263.3079, -912.937, 31.30721)
    cashier_heading = 331.6679

    --CASHIER INTERACTION
    coordinate_shop = vec3(-262.7916, -911.6105, 32.31413)

    --BOSS MENU
    coordinate_society = vec3(-263.523, -907.302, 46.30188)

    --BOSS ELEVATOR
    DS_Casino_System_Main_Config.SocietyEnterCoords = nil
    DS_Casino_System_Main_Config.SocietyExitCoords = nil

    --BARTENDER
    bartender_ped_coords = vector4(-251.7328, -913.7823, 31.56415, 70.11782)

    --BARTENDER INTERACTION
    bartender_buy_coords = vec3(-252.7824, -913.2173, 32.56424)
elseif DS_Casino_System_Main_Config.MapType == 8 then

    ----------------------------------------------------------
    ----------------------------------------------------------
    -------------------MOLO CASINO COORDS---------------------
    ----------------------------------------------------------
    ----------------------------------------------------------

    --CASINO AREA
    CASINO_AREA_MIN = vec3(892.4729, -39.61279, 68.1385)
    CASINO_AREA_MAX = vec3(1036.909, 111.2187, 108.6695)

    --BLACKJACK
    BJ_TABLES = {
        {
			coords = vector4(920.291, 15.625, 74.88, 91.40),
			highStakes = false
		},
        {
			coords = vector4(977.065, 73.979, 79.920, 235.87),
			highStakes = false
		},
        {
			coords = vector4(999.567, 56.965, 79.99, 284.22),
			highStakes = false
		},
        {
			coords = vector4(993.790, 57.308, 79.98, 53.91),
			highStakes = false
		},
	}

    --POKER
    POKER_TABLES = {
        [1] = {
            Position = vec3(922.810, 4.451, 74.88),
            Heading = 120.96
        },
        [2] = {
            Position = vec3(976.269, 78.920, 79.920),
            Heading = 329.28
        },
        [3] = {
            Position = vec3(995.143, 49.463, 79.97),
            Heading = 254.22
        },
        [4] = {
            Position = vec3(997.370, 59.607, 79.99),
            Heading = 339.98
        },
    }

    --ROULETTE
    ROULETTE_TABLES = {
        [0] = {
            position = vector3(928.490, 16.571, 74.88),
            rot = 264.40
        },
        [1] = {
            position = vector3(931.860, -1.680, 74.88),
            rot = 243.48
        },
        [2] = {
            position = vector3(972.251, 77.84, 79.938),
            rot = 235.87
        },
        [3] = {
            position = vector3(998.919, 52.535, 79.98),
            rot = 254.22
        },
    }

    --LUCKY WHEEL
    DS_Casino_System_LuckWheel.WheelPos = vec3(915.991, 20.297, 80.18)
    DS_Casino_System_LuckWheel.Heading = 133.87

    DS_Casino_System_LuckWheel.VehiclePos = vec3(918.475, 13.849, 79.691)
    DS_Casino_System_LuckWheel.VehHeading = 20.0

    --SECURITY CAMERAS
    CasinoCams = {
        {label = 'Security Camera [1]', x = 928.305, y= -4.212249, z= 85.58785, r = {x = -25.0, y = 0.0, z = -45.0}, canRotate = true},
        {label = 'Security Camera [2]', x = 981.1315, y= 58.98547, z= 85.58785, r = {x = -25.0, y = 0.0, z = 120.0}, canRotate = true},
    }

    --SECURITY CAMERA ACCESS
    coordinate_cameras = vec3(935.2294, 40.2744, 75.88807)

    --CASHIER
    cashier_coords = vec3(969.2961, 12.46764, 79.89934)
    cashier_heading = 60.70286

    --CASHIER INTERACTION
    coordinate_shop = vec3(967.8133, 13.38075, 80.89925)

    --BOSS MENU
    coordinate_society = vec3(934.1199, 38.34685, 75.88808)

    --BOSS ELEVATOR
    DS_Casino_System_Main_Config.SocietyEnterCoords = nil
    DS_Casino_System_Main_Config.SocietyExitCoords = nil

    --BARTENDER
    bartender_ped_coords = vector4(949.1232, 10.53663, 75.50617, 60.72935)

    --BARTENDER INTERACTION
    bartender_buy_coords = vec3(947.9582, 11.48704, 76.50611)
end
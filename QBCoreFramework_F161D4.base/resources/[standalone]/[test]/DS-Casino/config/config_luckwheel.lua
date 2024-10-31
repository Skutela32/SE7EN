DS_Casino_System_LuckWheel	= {

	DailySpin = false, --IF ENABLED PLAYER CAN SPIN ONE TIME PER DAY

	SpinMode = 500, -- SPIN COST OR ITEM NAME LIKE 500 or 'youritemname' (ONLY WORKS IF DailySpin = false)

	SpinCooldown = 1, --HOW MANY MINUTES BEFORE SPINNING ANOTHER TIME? (ONLY WORKS IF DailySpin = false)

	VehicleWinPos = {x = 906.4901, y = -34.71921, z = 78.76398, h = 58.75988},	--VEHICLE SPAWN COORDS WHEN A PLAYER WIN THAT
	
	Vehicle = 'zentorno', --VEHICLE WIN NAME

	VehiclePlate = 'CASINO', --SHOWN VEHICLE PLATE

	PlateLetters = 3, --THE MAXIMUM PLATE LENGHT IS 8 CHARS (INCLUDING SPACES)
	
	PlateNumbers = 3, --THE MAXIMUM PLATE LENGHT IS 8 CHARS (INCLUDING SPACES)

	PlateSpace = false, --ENABLE/DISABLE SPACE IN PLATES

	WheelModel = 'vw_prop_vw_luckywheel_02a', --EDIT ONLY IF YOU KNOW WHAT YOU ARE DOING

	Prices = { --PROBABILITY FROM 1% TO 100%
		[1]  = {type = 'car',   	name = 'car', 			count = 1, 		sound = 'car', 		probability = 1},
		[2]  = {type = 'item', 		name = 'diamond', 		count = 20, 	sound = 'win', 		probability = 68},
		[3]  = {type = 'item', 		name = 'collanacasino', count = 20, 	sound = 'clothes', 	probability = 77},
		[4]  = {type = 'item', 		name = 'casino_chips', 	count = 25000, 	sound = 'chips', 	probability = 34},
		[5]  = {type = 'account', 	name = 'money', 		count = 40000, 	sound = 'cash', 	probability = 14},
		[6]  = {type = 'item', 		name = 'casino_chips', 	count = 50000, 	sound = 'win', 		probability = 12},
		[7]  = {type = 'item', 		name = 'orologiocasino',count = 15, 	sound = 'clothes', 	probability = 32},
		[8]  = {type = 'item', 		name = 'weapon_pistol', count = 1, 		sound = 'mystery', 	probability = 5},
		[9]  = {type = 'item', 		name = 'casino_chips', 	count = 20000, 	sound = 'chips', 	probability = 23},
		[10] = {type = 'account', 	name = 'money', 		count = 10000, 	sound = 'win', 		probability = 49},
		[11] = {type = 'item',		name = 'casino_chips', 	count = 8000, 	sound = 'clothes', 	probability = 52},
		[12] = {type = 'item', 		name = 'casino_chips', 	count = 15000, 	sound = 'chips', 	probability = 18},
		[13] = {type = 'account', 	name = 'money', 		count = 30000, 	sound = 'cash', 	probability = 20},
		[14] = {type = 'account', 	name = 'money', 		count = 5000, 	sound = 'win', 		probability = 55},
		[15] = {type = 'item', 		name = 'casino_chips', 	count = 1000, 	sound = 'win', 		probability = 60},
		[16] = {type = 'item',		name = 'casino_chips', 	count = 10000, 	sound = 'chips', 	probability = 48},
		[17] = {type = 'account',	name = 'money', 		count = 20000, 	sound = 'cash', 	probability = 35},
		[18] = {type = 'item', 		name = 'scratchcard', 	count = 3, 		sound = 'win', 		probability = 40},
		[19] = {type = 'item', 		name = 'scratchcard', 	count = 1, 		sound = 'clothes', 	probability = 50},
		[20] = {type = 'account', 	name = 'money', 		count = 50000, 	sound = 'cash', 	probability = 20}
	}
}
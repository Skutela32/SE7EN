DS_Casino_System_Bartender_Config = {

    Enable = true,

	Ped = "a_f_y_juggalo_01",

	Snacks = {
		["chips"] = { --ITEM NAME
			label = "Chips",
			price = 100,
			description = "A delicious chips package.",
			vipExclusive = false
		},
		["chocolate"] = { --ITEM NAME
			label = "Chocolate",
			price = 0,
			description = "Delicious chocolate reserved to vips.",
			vipExclusive = true --ONLY FOR PEOPLE WHO HAVE BOUGHT VIP?
		},
	},

	Drinks = {
		["deluxe_champagne"] = { --ITEM NAME
			label = "Deluxe Champagne",
			price = 5000,
			description = "High-end champagne that can be found only at casino.",
			vipExclusive = false --ONLY FOR PEOPLE WHO HAVE BOUGHT VIP?
		},
		["champagne"] = { --ITEM NAME
			label = "Premium Champagne",
			price = 0,
			description = "High-end champagne reserved to vips.",
			vipExclusive = true --ONLY FOR PEOPLE WHO HAVE BOUGHT VIP?
		},
	},

}
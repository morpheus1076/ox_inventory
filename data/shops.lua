return {
	--[[General = {
		name = 'Kiosk 24/7',
		blip = {
			id = 59, colour = 69, scale = 0.5, hidden = true,
		},
		inventory = {
			{ name = 'wasser', price = 9 },
			{ name = 'sprunk', price = 12 },
			{ name = 'cola', price = 13 },
			{ name = 'brot', price = 6 },
			{ name = 'sandwich', price = 9 },
			{ name = 'blaettchen', price = 7 },
		},
		targets = {
			{ ped = 'mp_m_shopkeep_01', scenario = 'WORLD_HUMAN_AA_SMOKE', loc = vec3(378.766, 328.890, 102.567), heading = 159.668},
			{ ped = 'S_F_Y_Shop_LOW', scenario = 'WORLD_HUMAN_AA_COFFEE', loc = vec3(29.525, -1343.552, 28.489), heading = 172.9123},
			{ ped = 'mp_m_shopkeep_01', scenario = 'WORLD_HUMAN_AA_COFFEE', loc = vec3(-3044.129, 588.557, 6.909), heading = 285.588},
			{ ped = 'S_F_Y_Shop_MID', scenario = 'WORLD_HUMAN_STAND_MOBILE', loc = vec3(-3245.546, 1005.773, 11.831), heading = 264.827},
			{ ped = 'S_F_Y_Shop_LOW', scenario = 'WORLD_HUMAN_CLIPBOARD', loc = vec3(1734.491, 6416.077, 34.037), heading = 149.496},
			{ ped = 'mp_m_shopkeep_01', scenario = 'WORLD_HUMAN_SMOKE', loc = vec3(1963.041, 3745.995, 31.344), heading = 205.228},
			{ ped = 'S_F_Y_Shop_MID', scenario = 'WORLD_HUMAN_AA_COFFEE', loc = vec3(544.105, 2666.991, 41.157), heading = 8.550},
			{ ped = 'mp_m_shopkeep_01', scenario = 'WORLD_HUMAN_STAND_MOBILE', loc = vec3(2677.166, 3286.065, 54.241), heading = 241.922},
			{ ped = 'S_F_Y_Shop_LOW', scenario = 'WORLD_HUMAN_CLIPBOARD', loc = vec3(2553.693, 386.332, 107.623), heading = 259.845},
			{ ped = 'mp_m_shopkeep_01', scenario = 'WORLD_HUMAN_AA_COFFEE', loc = vec3(159.9670, 6641.0176, 30.6985), heading = 225.7307},
			{ ped = 'S_F_Y_Shop_LOW', scenario = 'WORLD_HUMAN_AA_COFFEE', loc = vec3(2005.173, 3784.776, 31.201), heading = 113.284},
			{ ped = 'mp_m_shopkeep_01', scenario = 'WORLD_HUMAN_STAND_MOBILE', loc = vec3(191.782, -23.059, 68.920), heading = 249.125},
		}
	},]]
	--[[Liquor = {
		name = 'Rob´s Schnaps Laden',
		blip = {
			id = 59, colour = 1, scale = 0.5, hidden = true
		}, inventory = {
			{ name = 'bier', price = 12, sellprice = 6 },
			{ name = 'cola', price = 15, sellprice = 6 },
			{ name = 'burger', price = 27, sellprice = 6 },
		},
		targets = {
			{ ped = 'mp_m_shopkeep_01', scenario = 'WORLD_HUMAN_DRINKING', loc = vec3(-1486.7439, -377.5307, 39.1634), heading = 131.8548},
			{ ped = 'S_F_Y_Shop_LOW', scenario = 'WORLD_HUMAN_AA_SMOKE', loc = vec3(1134.3135, -983.2003, 44.4158), heading = 275.9501},
			{ ped = 'S_F_Y_Shop_MID', scenario = 'WORLD_HUMAN_DRINKING', loc = vec3(-1221.4283, -907.9989, 11.3263), heading = 33.5436},
			{ ped = 'mp_m_shopkeep_01', scenario = 'WORLD_HUMAN_CLIPBOARD', loc = vec3(-2966.3926, 391.5766, 14.0433), heading = 85.4508},
			{ ped = 'S_F_Y_Shop_LOW', scenario = 'WORLD_HUMAN_CLIPBOARD', loc = vec3(1166.8092, 2710.7844, 37.1577), heading = 181.9506},
			{ ped = 'mp_m_shopkeep_01', scenario = 'WORLD_HUMAN_DRINKING', loc = vec3(1392.4359, 3606.2634, 33.9809), heading = 197.8445},
			{ ped = 'S_M_Y_Shop_MASK', scenario = 'WORLD_HUMAN_SMOKE', loc = vec3(4466.2109, -4463.9351, 3.2490), heading = 201.4549},
		}
	},]]

	Hackershop = {
		name = 'Hackershop',
		blip = {
			id = 606, colour = 35, scale = 0.4, hidden = true
		}, inventory = {
			{ name = 'laptop_h', price = 5000, currency = 'black_money' },
			{ name = 'id_card', price = 3700, currency = 'black_money' },
		}, locations = {
			vec3(1276.28, -1710.22, 54.77)
		}, targets = {
			{ loc = vec3(1276.28, -1710.22, 54.77), length = 2.4, width = 0.1, heading = 25.0, minZ = 54.37, maxZ = 55.37, distance = 3.0 }
		}
	},

	--[[Bauernhof = { --SELLSHOP
		name = 'Bauernhof',
		blip = {
			id = 59, colour = 35, scale = 0.5, hidden = false
		}, inventory = {
			{ name = 'money', price = 1, currency = 'salat' },
			{ name = 'money', price = 1, currency = 'zwiebel' },
			{ name = 'money', price = 1, currency = 'orange' },
			{ name = 'money', price = 1, currency = 'tomate' },
			{ name = 'money', price = 1, currency = 'aramidfasern' },
			{ name = 'money', price = 1, currency = 'wolle' },
		}, targets = {
			{ ped = 'A_M_M_Farmer_01', scenario = 'WORLD_HUMAN_AA_SMOKE', loc = vec3(2309.0313, 4884.0757, 40.8082), heading = 39.0941},
		}
	},]]

	TaschenLaden = {
		name = 'Taschen',
		blip = {
			id = 59, colour = 62, scale = 0.5, hidden = true
		}, inventory = {
			{ name = 'bag', price = 3000 },
			{ name = 'bag2', price = 5000 },
			{ name = 'kleidertasche', price = 8000},
			{ name = 'schluesselring', price = 30},
		}, targets = {
			{ ped = 'a_m_y_juggalo_01', scenario = 'WORLD_HUMAN_CLIPBOARD', loc = vec3(-1612.281, -1075.265, 12.019), heading = 100.973},
		}
	},

	YouTool = {
		name = 'Baumarkt',
		blip = {
			id = 59, colour = 38, scale = 0.6, hidden = true
		}, inventory = {
			{ name = 'lockpick', price = 500 },
			{ name = 'schere', price = 100 },
			{ name = 'handcuffs', price = 250 },
			{ name = 'blowpipe', price = 500 },
			{ name = 'lithium', price = 15 },
			{ name = 'parachute', price = 3450 },
			{ name = 'axt', price = 250 },
			{ name = 'WEAPON_FLASHLIGHT', price = 295 },
		    { name = 'waschset', price = 200 },
			{ name = 'fixkit', price = 5000 },
			{ name = 'beutel1_pack', price = 52 },
		}, targets = {
			{ ped = 'S_M_Y_Construct_01', scenario = 'WORLD_HUMAN_CLIPBOARD', loc = vec3(2748.3401, 3474.2588, 54.6724), heading = 226.0162},
			{ ped = 'S_M_Y_Construct_01', scenario = 'WORLD_HUMAN_AA_SMOKE', loc = vec3(342.5627, -1297.8639, 31.5101), heading = 166.5375},
		}
	},

	Ltd = {
		name = 'Ron´s Shop',
		blip = {
			id = 628, colour = 69, scale = 0.5, hidden = true
		}, inventory = {
			{ name = 'brot', price = 7 },
			{ name = 'cola', price = 13 },
			{ name = 'blaettchen', price = 3 },
			{ name = 'warndreieck', price = 50 },
			{ name = 'warnweste', price = 25 },
			{ name = 'waschset', price = 320 },
			{ name = 'weapon_petrolcan', price = 220 },
		},  targets = {
			{ ped = 'S_M_M_AutoShop_01', scenario = 'WORLD_HUMAN_DRINKING', loc = vec3(1697.3727, 4923.4312, 41.0637), heading = 322.3297},
			{ ped = 'S_M_M_AutoShop_01', scenario = 'WORLD_HUMAN_AA_SMOKE', loc = vec3(-706.1183, -914.5864, 18.2156), heading = 86.8069},
			{ ped = 'S_M_M_AutoShop_01', scenario = 'WORLD_HUMAN_AA_SMOKE', loc = vec3(-47.3256, -1758.6655, 28.4209), heading = 45.0096},
			{ ped = 'S_M_M_AutoShop_01', scenario = 'WORLD_HUMAN_DRINKING', loc = vec3(1164.923, -323.655, 68.205), heading = 96.051},
			--{ ped = 'S_M_M_AutoShop_01', scenario = 'WORLD_HUMAN_AA_SMOKE', loc = vec3(241.1945, -897.9530, 28.6232), heading = 164.5896}, CentralPark
		}
	},

	Ammunation = {
		name = 'Waffenladen',
		blip = {
			id = 110, colour = 69, scale = 0.5, hidden = true
		}, inventory = {
			{ name = 'ammo-9', price = 5, },
			{ name = 'WEAPON_KNIFE', price = 200 },
			{ name = 'WEAPON_BAT', price = 100 },
			{ name = 'kevlars', price = 1000 },
			{ name = 'kevlarm', price = 1500 },
			{ name = 'kevlar', price = 2100 },
			{ name = 'WEAPON_PISTOL', price = 1000, metadata = { registered = true }, license = 'weapon' },
		}, targets = {
			{ ped = 'S_M_M_AmmuCountry', scenario = 'WORLD_HUMAN_DRINKING', loc = vec3(-661.6767, -933.5714, 20.8292), heading = 175.5425},
			{ ped = 'S_M_Y_AmmuCity_01', scenario = 'WORLD_HUMAN_AA_SMOKE', loc = vec3(810.3133, -2159.0464, 28.6190), heading = 358.9748},
			{ ped = 'S_M_M_AmmuCountry', scenario = 'WORLD_HUMAN_CLIPBOARD', loc = vec3(1694.8267, 3761.2852, 33.7054), heading = 135.4213},
			{ ped = 'S_M_M_AmmuCountry', scenario = 'WORLD_HUMAN_AA_SMOKE', loc = vec3(-331.2310, 6085.4409, 30.4548), heading = 224.5500},
			{ ped = 'S_M_Y_AmmuCity_01', scenario = 'WORLD_HUMAN_CLIPBOARD', loc = vec3(250.1848, -51.6053, 68.9411), heading = 30.6571},
			{ ped = 'S_M_Y_AmmuCity_01', scenario = 'WORLD_HUMAN_AA_SMOKE', loc = vec3(23.9163, -1107.6727, 28.7970), heading = 70.7882},
			{ ped = 'S_M_M_AmmuCountry', scenario = 'WORLD_HUMAN_DRINKING', loc = vec3(2568.2502, 292.5665, 106.7348), heading = 359.9678},
			{ ped = 'S_M_M_AmmuCountry', scenario = 'WORLD_HUMAN_AA_SMOKE', loc = vec3(-1118.7694, 2700.0195, 17.5541), heading = 220.6967},
			{ ped = 'S_M_Y_AmmuCity_01', scenario = 'WORLD_HUMAN_CLIPBOARD', loc = vec3(844.5178, -1035.2571, 27.1948), heading = 1.6867},
		}
	},

	PoliceArmoury = {
		name = 'Police Armoury',
		groups = {
			['police'] = 3
		},
		blip = {
			id = 110, colour = 84, scale = 0.5, hidden = true
		}, inventory = {
			{ name = 'ammo-9', price = 5, grade = 3 },
			{ name = 'ammo-rifle', price = 5, grade = 3 },
			{ name = 'WEAPON_FLASHLIGHT', price = 200 },
			{ name = 'WEAPON_NIGHTSTICK', price = 100 },
			{ name = 'uvlight', price = 100, grade = 3 },
			{ name = 'nikkit', price = 1, grade = 3 },
			{ name = 'handcuffs', price = 30 },
			{ name = 'kevlars', price = 800 },
			{ name = 'kevlarm', price = 1200 },
			{ name = 'kevlar', price = 1750 },
			{ name = 'WEAPON_PISTOL', price = 500, grade = 1, metadata = { registered = true, serial = 'POL' }, license = 'weapon' },
			{ name = 'WEAPON_CARBINERIFLE', price = 1000, metadata = { registered = true, serial = 'POL' }, license = 'weapon', grade = 3 },
			{ name = 'WEAPON_STUNGUN', price = 500, metadata = { registered = true, serial = 'POL'} }
		}, locations = {
			vec3(449.6307, -978.3926, 30.5637)
		}, targets = {
			{ ped = 'S_M_Y_AmmuCity_01', scenario = 'WORLD_HUMAN_CLIPBOARD', loc = vec3(480.3083, -996.7000, 29.6898), heading = 85.7288},
		}
	},

	Medicine = {
		name = 'Ambulance Shop',
		groups = {
			['ambulance'] = 2
		},
		blip = {
			id = 403, colour = 69, scale = 0.5
		}, inventory = {
			--{ name = 'defibrillator', price = 200 },
			{ name = 'medikit', price = 100 },
			{ name = 'bandage', price = 10 }
		}, locations = {
			vec3(1140.0309, -1563.4537, 35.3805)
		}, targets = {
			{ loc = vec3(1140.0309, -1563.4537, 35.3805), length = 1.3, width = 1.0, heading = 0, minZ = 34.28, maxZ = 36.48, distance = 3 }
		}
	},

	Obststand = {
		name = 'Obststand',
		blip = {
			id = 642, colour = 3, scale = 0.5, hidden = true
		}, inventory = {
			{ name = 'salat', price = 4, currency = 'money' },
			{ name = 'zwiebel', price = 3, currency = 'money' },
			{ name = 'orange', price = 4, currency = 'money' },
			{ name = 'tomate', price = 3, currency = 'money' },
		}, targets = {
			{ ped = 'CS_Old_Man2', scenario = 'WORLD_HUMAN_CLIPBOARD', loc = vec3(-1044.1439, 5327.8042, 43.5729), heading = 34.5952},
			{ ped = 'CS_Old_Man2', scenario = 'WORLD_HUMAN_CLIPBOARD', loc = vec3(2529.0789, 2037.7456, 18.8392), heading = 276.2651},
			{ ped = 'CS_Old_Man2', scenario = 'WORLD_HUMAN_CLIPBOARD', loc = vec3(-2510.8252, 3611.2319, 12.7502), heading = 233.5381},
			{ ped = 'CS_Old_Man2', scenario = 'WORLD_HUMAN_CLIPBOARD', loc = vec3(1789.913, 4589.738, 36.683), heading = 196.567},
			{ ped = 'CS_Old_Man2', scenario = 'WORLD_HUMAN_CLIPBOARD', loc = vec3(1266.762, 3549.688, 34.217), heading = 229.886},
			{ ped = 'CS_Old_Man2', scenario = 'WORLD_HUMAN_CLIPBOARD', loc = vec3(1477.270, 2723.627, 36.567), heading = 32.135},
		}
	},

	Lieferantttf = {
		name = 'Lieferant Taco',
		groups = {
			['ttf'] = 1
		},
		inventory = {
			{ name = 'fleisch', price = 1 },
			{ name = 'teig', price = 1},
			{ name = 'sauce', price = 1 },
			{ name = 'salatgeschnitten', price = 1 },
			{ name = 'gewuerz', price = 1 },
		},
		targets = {
			{ ped = 'A_M_Y_BusiCas_01', scenario = 'WORLD_HUMAN_CLIPBOARD', loc = vec3(90.072, -1742.166, 28.298), heading =  224.069},
		}
	},

	VendingMachineDrinks = {
		name = 'Getränke Automat',
		inventory = {
			{ name = 'wasser', price = 10 },
			{ name = 'cola', price = 10 },
			{ name = 'sprunk', price = 8 }
		},
		model = {
			'prop_vend_soda_02', 'prop_vend_fridge01', 'prop_vend_water_01', 'prop_vend_soda_01'
		}
	},
	Hamburgerstand = {
		name = 'Burger Stand',
		inventory = {
			{ name = 'hamburger', price = 24 },
			{ name = 'cola', price = 10 }
		},
		model = {
			'prop_burgerstand_01'
		}
	},
	HotDogstand = {
		name = 'Hotdog Stand',
		inventory = {
			{ name = 'hotdog', price = 22 },
			{ name = 'sprunk', price = 10 }
		},
		model = {
			'prop_hotdogstand_01'
		}
	},
	Snackautomat = {
		name = 'Snack Automat',
		inventory = {
			{ name = 'chips', price = 5 },
		},
		model = {
			'prop_vend_snak_01'
		}
	},
	Wasserspender = {
		name = 'Wasserspender',
		inventory = {
			{ name = 'wasser', price = 6 },
		},
		model = {
			'prop_watercooler'
		}
	},
	Zigarettenautomat = {
		name = 'Zigaretten Automat',
		inventory = {
			{ name = 'redwoodgold2', price = 30 },
		},
		model = {
			'prop_vend_fags_01'
		}
	},
	Kaffeeautomat = {
		name = 'Kaffee Automat',
		inventory = {
			{ name = 'kaffeeschwarz', price = 5 },
			{ name = 'kaffeeweiss', price = 5 },
			{ name = 'kaffeezu', price = 5 },
			{ name = 'kaffeezuwe', price = 6 },
			{ name = 'cappuccino', price = 7 },
			{ name = 'lattemacchiato', price = 8 },
		},
		model = {
			'prop_vend_coffe_01'
		}
	},
}
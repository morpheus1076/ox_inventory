return {

--- Core ---
	['money'] = {
		label = 'Bargeld',
	},
	['black_money'] = {
		label = 'Schwarzgeld',
	},
	['identification'] = {
		label = 'Ausweis',
		stack = false,
		close = true,
		weight = 10,
	},
	['mastercard'] = {
		label = 'Fleeca Card',
		stack = false,
		weight = 10,
		client = {
			image = 'card_bank.png'
		}
	},
	['keys'] = {
		label = 'Schlüssel',
		weight = 2,
		stack = false,
		close = true,
		description = 'Schlüssel'
	},
	['handcuffs'] = {
		label = 'Handschellen',
		weight = 150,
		stack = true,
		close = true,
		description = nil
	},

	['shoes'] = {
		label = 'Schuhe',
		weight = 500,
		stack = false,
		close = true,
		description = 'Schuhe Variation',
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = 'prop_rolled_sock_02', pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 3500,
		}
	},
	['pants'] = {
		label = 'Hose',
		weight = 1200,
		stack = false,
		close = true,
		description = 'Hose Variation',
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = 'prop_rolled_sock_02', pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 4500,
		}
	},
	['mask'] = {
		label = 'Maske',
		weight = 70,
		stack = false,
		close = true,
		description = 'Maske Variation',
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = 'prop_rolled_sock_02', pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},
	['mdt'] = {
		label = 'MDT',
		weight = 250,
		client = {
			export = "ox_mdt.openMDT"
		}
	},


-- Container Items ---
	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},
	['wallet'] = {
		label = 'Portemonaie',
		weight = 30,
		stack = false,
		close = false,
		description = 'Zum Beispiel zur Aufbewahrung von Karten, Geld'
	},
	['schluesselring'] = {
		label = 'Schlüsselring',
		weight = 1,
		stack = false,
		close = false,
		description = 'zum Schlüssel sammeln'
	},
	['holzkiste'] = {
		label = 'Holzkiste',
		weight = 2000,
		stack = true,
		close = true,
		description = 'Handelsgut'
	},
	['holzkiste2'] = {
		label = 'Erw. Holzkiste',
		weight = 4000,
		stack = false,
		close = false,
		description = 'Lagerbehälter',
		buttons = {
			{
				label = 'Anpassen',
				action = function(slot)
					TriggerEvent('mor_box:inputmenu', slot)
				end
			},
		},
		consume = 0
	},

--- Medical ---
	["medbag"] = {
		label = "Trauma bag",
		weight = 1000,
		stack = false,
		consume = 1,
		server = {
			export = "ND_Ambulance.useBag"
		},
		client = {
			export = "ND_Ambulance.useBag",
			add = function(total)
				if total > 0 then
					pcall(function()
						return exports["ND_Ambulance"]:bag(true)
					end)
				end
			end,
			remove = function(total)
				if total < 1 then
					pcall(function()
						return exports["ND_Ambulance"]:bag(false)
					end)
				end
			end
		}
	},
	["bandage2"] = {
		label = "Bandage",
		weight = 115,
		description = "Wrap gauze with this",
		server = {
			export = "ND_Ambulance.bandage2"
		},
		client = {
			anim = { dict = "missheistdockssetup1clipboard@idle_a", clip = "idle_a", flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500
		},
		buttons = {
			{
				label = "Use on nearby player",
				action = function(slot)
					TriggerServerEvent("ND_Ambulance:useOnNearby", "bandage2", slot)
				end
			}
		}
	},
	["gauze"] = {
		label = "Gaze",
		weight = 80,
		description = "Cover wounds with this.",
		server = {
			export = "ND_Ambulance.gauze"
		},
		client = {
			anim = { dict = "missheistdockssetup1clipboard@idle_a", clip = "idle_a", flag = 49 },
			prop = { model = `prop_toilet_roll_01`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500
		},
		buttons = {
			{
				label = "Verwendung bei einem Spieler in der Nähe",
				action = function(slot)
					TriggerServerEvent("ND_Ambulance:useOnNearby", "gauze", slot)
				end
			}
		}
	},
	["tourniquet"] = {
		label = "Aderpresse",
		weight = 85,
		description = "Verlangsamen Sie die Blutung stark.",
		server = {
			export = "ND_Ambulance.tourniquet"
		},
		client = {
			anim = { dict = "missheistdockssetup1clipboard@idle_a", clip = "idle_a", flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500
		},
		buttons = {
			{
				label = "Verwendung bei einem Spieler in der Nähe",
				action = function(slot)
					TriggerServerEvent("ND_Ambulance:useOnNearby", "tourniquet", slot)
				end
			}
		}
	},
	["medkit"] = {
		label = "Medkit",
		weight = 600,
		description = "Once all injuries are taken care of you can use this to replenish health.",
		server = {
			export = "ND_Ambulance.medkit"
		},
		client = {
			anim = { dict = "missheistdockssetup1clipboard@idle_a", clip = "idle_a", flag = 49 },
			prop = { model = `prop_ld_health_pack`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500
		},
		buttons = {
			{
				label = "Verwendung bei einem Spieler in der Nähe",
				action = function(slot)
					TriggerServerEvent("ND_Ambulance:useOnNearby", "medkit", slot)
				end
			}
		}
	},
	["stretcher"] = {
		label = "Stretcher",
		weight = 15000,
		stack = false,
		consume = 1,
		server = {
			export = "ND_Ambulance.createStretcher"
		}
	},
	["defib"] = {
		label = "Monitor/defibrillator",
		weight = 8000,
		stack = false,
		consume = 1,
		client = {
			export = "ND_Ambulance.useDefib",
			add = function(total)
				if total > 0 then
					pcall(function()
						return exports["ND_Ambulance"]:hasDefib(true)
					end)
				end
			end,
			remove = function(total)
				if total < 1 then
					pcall(function()
						return exports["ND_Ambulance"]:hasDefib(false)
					end)
				end
			end
		}
	},
	["burndressing"] = {
		label = "Burn Dressing",
		weight = 50,
		server = {
			export = "ND_Ambulance.treatment"
		},
		client = {
			anim = { dict = "missheistdockssetup1clipboard@idle_a", clip = "idle_a", flag = 49 },
			prop = { model = `prop_toilet_roll_01`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500
		}
	},
	["splint"] = {
		label = "Splint",
		weight = 500,
		server = {
			export = "ND_Ambulance.treatment"
		},
		client = {
			anim = { dict = "missheistdockssetup1clipboard@idle_a", clip = "idle_a", flag = 49 },
			prop = { model = `prop_toilet_roll_01`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500
		}
	},
	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = 'prop_rolled_sock_02', pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},
	['medikit'] = {
		label = 'Erste Hilfe Set',
		weight = 1300,
		stack = true,
		close = true,
		description = nil,
		allowArmed = true,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = 'prop_rolled_sock_02', pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0)},
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},
--- Essen ---
	['burger'] = {
		label = 'Burger',
		weight = 220,
		degrade = 1449,
		--decay = true,
		client = {
			status = { hunger = 330000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'sieht besser aus als er schmeckt.'
		},
	},
	['obstsalat'] = {
		label = 'Obstsalat',
		weight = 600,
		stack = true,
		close = true,
		degrade = 720,
		--decay = true,
		notification = nil,
		client = {
			status = { hunger = 380000, thirst = 80000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'apa_prop_cs_plastic_cup_01', pos = vec3(0.01, 0.01, 0.01), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 3500,
			cancel = true
		}
	},
	['brot'] = {
		label = 'Brot',
		weight = 150,
		stack = true,
		close = true,
		degrade = 1449,
		--decay = true,
		description = nil,
		client = {
			status = { hunger = 180000 },
			anim = 'eating',
			prop = 'sandwich',
			usetime = 2500
		},
	},
	['cheeseburger'] = {
		label = 'Cheeseburger',
		weight = 170,
		stack = true,
		close = true,
		degrade = 1449,
		--decay = true,
		description = nil,
		client = {
			status = { hunger = 310000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 3000
		},
	},
	['chickenburger'] = {
		label = 'Chickenburger',
		weight = 340,
		stack = true,
		close = true,
		degrade = 1449,
		--decay = true,
		description = nil,
		client = {
			status = { hunger = 430000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 3200
		},
	},
	['chips'] = {
		label = 'Chips',
		weight = 175,
		stack = true,
		close = true,
		degrade = 1449,
		--decay = true,
		description = nil,
		client = {
			status = { hunger = 130000 },
			anim = 'eating',
			prop = 'xs_prop_chips_tube_wl',
			usetime = 2000
		},
	},
	['pommes'] = {
		label = 'Pommes',
		weight = 360,
		stack = true,
		close = true,
		description = nil,
		degrade = 340,
		--decay = true,
		client = {
			status = { hunger = 250000 },
			anim = 'eating',
			prop = '',
			usetime = 2500
		}
	},
	['sandwich'] = {
		label = 'Sandwich',
		weight = 400,
		stack = true,
		close = true,
		degrade = 1449,
		--decay = true,
		description = 'Lecker Sandwich',
		client = {
			status = { hunger = 380000 },
			anim = 'eating',
			prop = 'sandwich',
			usetime = 2500,
			notification = 'Du hast ein leckeres Sandwich gegessen'
		},
	},
	['hotdog'] = {
		label = 'Hotdog',
		weight = 180,
		stack = true,
		close = true,
		degrade = 1449,
		--decay = true,
		description = nil,
		client = {
			status = { hunger = 360000 },
			anim = 'eating',
			prop = 'hotdog',
			usetime = 2500,
			notification = 'Lecker Hotdog'
		},
	},
	['apfelkuchen'] = {
		label = 'Stück Apfelkuchen',
		stack = false,
		weight = 600,
		degrade = 250,
		--decay = true,
		close = true,
		client = {
			status = { hunger = 370000, thirst = 20000, drunk = -3000 },
			--anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			--prop = { model = 'prop_ld_flow_bottle', pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 5000,
			cancel = true,
			notification = 'Hmmm, schmeckt wie selber gemacht.'
		}
	},
	['nusstorte'] = {
		label = 'Stück Nusstorte',
		stack = false,
		weight = 600,
		degrade = 250,
		--decay = true,
		close = true,
		client = {
			status = { hunger = 350000, thirst = 10000, drunk = -3000 },
			--anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			--prop = { model = 'prop_ld_flow_bottle', pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 5000,
			cancel = true,
			notification = 'Hmmm, schmeckt wie selber gemacht.'
		}
	},
	['taco'] = {
		label = 'Taco',
		weight = 500,
		stack = true,
		close = true,
		client = {
			status = { hunger = 420000 },
			anim = 'eating',
			prop = 'taco',
			usetime = 8000,
			cancel = true,
		}
	},
	['burrito'] = {
		label = 'Burrito',
		weight = 500,
		stack = true,
		close = true,
		client = {
			status = { hunger = 380000 },
			anim = 'eating',
			prop = 'burrito',
			usetime = 8000,
			cancel = true,
		}
	},
	['torta'] = {
		label = 'Torta',
		weight = 500,
		stack = true,
		close = true,
		client = {
			status = { hunger = 420000 },
			anim = 'eating',
			prop = 'taco',
			usetime = 8000,
			cancel = true,
		}
	},
	['chilaquiles'] = {
		label = 'Chilaquiles',
		weight = 1200,
		stack = false,
		close = true,
		description = nil,
		client = {
			status = { hunger = 420000 },
			anim = 'eating',
			prop = { model = 'prop_taco_02', pos = vec3(0.01, 0.01, 0.06), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 3000,
			cancel = true,
		}
	},
	['pizza_hawaii'] = {
		label = 'Pizza Hawaii',
		weight = 1200,
		stack = false,
		close = true,
		description = nil,
		client = {
			status = { hunger = 670000 },
			anim = 'eating',
			prop = { model = 'prop_taco_02', pos = vec3(0.01, 0.01, 0.06), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 3000,
			cancel = true,
		}
	},
	['pizza_tonno'] = {
		label = 'Pizza Thunfisch',
		weight = 1200,
		stack = false,
		close = true,
		description = nil,
		client = {
			status = { hunger = 510000 },
			anim = 'eating',
			prop = { model = 'prop_taco_02', pos = vec3(0.01, 0.01, 0.06), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2900,
			cancel = true,
			--notification = 'Lecker Tee, der ist echt gut'
		}
	},
	['pizza_diavolo'] = {
		label = 'Pizza Teuflisch',
		weight = 1500,
		stack = false,
		close = true,
		description = nil,
		client = {
			status = { hunger = 510000 },
			anim = 'eating',
			prop = { model = 'prop_taco_02', pos = vec3(0.01, 0.01, 0.06), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 3800,
			cancel = true,
		}
	},
	['bleeder'] = {  --- Exclusiv Burgershot
		label = 'Bleeder',
		weight = 210,
		stack = true,
		close = true,
		degrade = 1449,
		--decay = true,
		description = nil,
		client = {
			status = { hunger = 550000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2800
		},
		metadata = {image = 'burger'}
	},
	['hamburger'] = {
		label = 'Hamburger',
		weight = 160,
		stack = true,
		close = true,
		description = nil,
		degrade = 1449,
		--decay = true,
		client = {
			status = { hunger = 510000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500
		}
	},
--- Trinken ---
	['cola'] = {
		label = 'eCola',
		weight = 350,
		degrade = 1449,
		--decay = true,
		client = {
			status = { thirst = 490000 },
			anim = 'drinking',
			prop = 'ecola',
			usetime = 3000
		}
	},
	['wasser'] = {
		label = 'Wasser',
		weight = 330,
		degrade = 1449,
		client = {
			status = { thirst = 570000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_ld_flow_bottle', pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 4500,
			cancel = true
		}
	},
	['saft'] = {
		label = 'Saft',
		weight = 500,
		degrade = 720,
		stack = true,
		client = {
			status = { thirst = 400000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'apa_prop_cs_plastic_cup_01', pos = vec3(0.01, 0.01, 0.01), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 3500
		}
	},
	['kaffee'] = {
		label = 'Kaffee',
		weight = 200,
		stack = true,
		close = true,
		description = nil,
		client = {
			status = { thirst = 220000, drunk = -10000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_fib_coffee',
			pos = vec3(0.008, 0.0, 0.05), rot = vec3(0.0, 0.0, -40.0) },
			usetime = 7500
		}
	},
	['tasse_tee'] = {
		label = 'Tasse Tee',
		stack = false,
		weight = 300,
		degrade = 250,
		--decay = true,
		consume = 0.5,
		close = true,
		client = {
			status = { thirst = 280000, drunk = -3000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			--prop = { model = 'prop_ld_flow_bottle', pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 1300,
			cancel = true,
		}
	},
	['sprunk'] = {
		label = 'Sprunk',
		weight = 330,
		stack = true,
		close = true,
		degrade = 1449,
		--decay = true,
		description = nil,
		client = {
			status = { thirst = 480000 },
			anim = 'drinking',
			prop = 'sprunk',
			usetime = 2500
			}
	},
	['junk'] = {
		label = 'Junk',
		weight = 330,
		stack = true,
		close = true,
		degrade = 1449,
		--decay = true,
		description = 'Energy',
		client = {
			status = { thirst = 580000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'sf_prop_sf_can_01a', pos = vec3(0.01, 0.01, 0.01), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 3500
			}
	},
	['sodajari'] = {
		label = 'Soda Jari',
		weight = 450,
		stack = true,
		close = true,
		--decay = true,
		client = {
			status = { thirst = 620000 },
			anim = 'drinking',
			prop = 'juice',
			usetime = 3500
			}
	},
	['tequila_glas'] = {
		label = 'Tequila',
		weight = 270,
		stack = false,
		close = true,
		description = nil,
		degrade = 350,
		--decay = true,
		client = {
			status = { thirst = 30000, hunger = 12000, drunk = 50000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_tequila', pos = vec3(0.01, 0.01, 0.06), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 3000,
			cancel = true,
		}
	},
	['bier'] = {
		label = 'Bier',
		weight = 330,
		stack = true,
		close = true,
		description = nil,
		consume = 0.2,
		client = {
			status = { thirst = 20000, drunk = 8000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_cs_beer_bot_01', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 7500
		}
	},
	['whiskey_glas'] = {
		label = 'Glas Whiskey',
		weight = 250,
		stack = false,
		close = true,
		description = nil,
		consume = 0.5,
		client = {
			status = { thirst = 100000, drunk = 25000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_cs_shot_glass', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 3500
		}
	},
	['whiskey_flasche'] = {
		label = 'Whiskey Flasche',
		weight = 940,
		stack = false,
		close = true,
		description = nil,
		consume = 0.1,
		client = {
			status = { thirst = 100000, drunk = 25000, },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_cs_shot_glass', pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 3500
		}
	},
	['limonadeglas'] = {
		label = 'Glas Limonade',
		weight = 500,
		stack = true,
		close = true,
		description = nil,
		client = {
			status = { thirst = 420000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'apa_prop_cs_plastic_cup_01', pos = vec3(0.01, 0.01, 0.01), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500
			}
	},
	['sexonthebeach'] = {
		label = 'Sex on the Beach',
		weight = 650,
		consume = 0.5,
		client = {
			status = { drunk = 100000, thirst = 75000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_cocktail', pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'Lecker und uiuiui'
		}
	},
	['tequilasunrise'] = {
		label = 'Tequila Sunrise',
		weight = 650,
		consume = 0.5,
		client = {
			status = { drunk = 100000, thirst = 75000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_cocktail', pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'Lecker und uiuiui'
		}
	},
	['caipirinha'] = {
		label = 'Caipirinha',
		weight = 650,
		consume = 0.5,
		client = {
			status = { drunk = 80000, thirst = 100000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_cocktail', pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'Lecker und uiuiui'
		}
	},
	['rotwein'] = {
		label = 'Rotwein',
		stack = false,
		weight = 700,
		degrade = 350,
		--decay = true,
		consume = 0.2,
		close = true,
		client = {
			status = { thirst = 80000, drunk = 10000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			--prop = { model = 'prop_ld_flow_bottle', pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 1300,
			cancel = true,
			--notification = 'Lecker Tee, der ist echt gut'
		}
	},
	['weisswein'] = {
		label = 'Weißwein',
		stack = false,
		weight = 700,
		degrade = 350,
		--decay = true,
		consume = 0.2,
		close = true,
		client = {
			status = { thirst = 85000, drunk = 10000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			--prop = { model = 'prop_ld_flow_bottle', pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 1300,
			cancel = true,
			--notification = 'Lecker Tee, der ist echt gut'
		}
	},
	['kaffeeschwarz'] = {
		label = 'Kaffee schwarz',
		weight = 250,
		stack = false,
		close = true,
		degrade = 350,
		--decay = true,
		description = nil,
		client = {
			status = { drunk = -30000, thirst = 80000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'p_amb_coffeecup_01', pos = vec3(0.01, 0.0, 0.05), rot = vec3(1.0, 1.0, 0.0) },
			usetime = 2500
		}
	},
	['kaffeeweiss'] = {
		label = 'Kaffee mit Milch',
		weight = 250,
		stack = false,
		close = true,
		degrade = 350,
		--decay = true,
		description = nil,
		client = {
			status = { drunk = -30000, thirst = 80000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'p_amb_coffeecup_01', pos = vec3(0.01, 0.0, 0.05), rot = vec3(1.0, 1.0, 0.0) },
			usetime = 2500
		}
	},
	['kaffeezu'] = {
		label = 'Kaffee mit Zucker',
		weight = 250,
		stack = false,
		close = true,
		degrade = 350,
		--decay = true,
		description = nil,
		client = {
			status = { drunk = -30000, thirst = 80000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'p_amb_coffeecup_01', pos = vec3(0.01, 0.0, 0.05), rot = vec3(1.0, 1.0, 0.0) },
			usetime = 2500
		}
	},
	['kaffeezuwe'] = {
		label = 'Kaffee mit Milch und Zucker',
		weight = 250,
		stack = false,
		close = true,
		degrade = 350,
		--decay = true,
		description = nil,
		client = {
			status = { drunk = -30000, thirst = 80000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'p_amb_coffeecup_01', pos = vec3(0.01, 0.0, 0.05), rot = vec3(1.0, 1.0, 0.0) },
			usetime = 2500
		}
	},
	['cappuccino'] = {
		label = 'Cappuccino',
		weight = 250,
		stack = false,
		close = true,
		degrade = 350,
		--decay = true,
		description = nil,
		client = {
			status = { drunk = -30000, thirst = 80000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'p_amb_coffeecup_01', pos = vec3(0.01, 0.0, 0.05), rot = vec3(1.0, 1.0, 0.0) },
			usetime = 2500
		}
	},
	['lattemacchiato'] = {
		label = 'Latte Macchiato',
		weight = 250,
		stack = false,
		close = true,
		degrade = 350,
		--decay = true,
		description = nil,
		client = {
			status = { drunk = -30000, thirst = 80000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'p_amb_coffeecup_01', pos = vec3(0.01, 0.0, 0.05), rot = vec3(1.0, 1.0, 0.0) },
			usetime = 2500
		}
	},
--- Farming & Crafting---

	['getreide'] = {
		label = 'Getreide',
		weight = 300,
		stack = true,
		close = true,
		description = nil
	},
	['salat'] = {
		label = 'Salat',
		weight = 300,
		stack = true,
		close = true,
		description = nil
	},
	['salatgeschnitten'] = {
		label = 'Salat geschnitten',
		weight = 15,
		stack = true,
		close = true,
		description = nil
	},
	['orange'] = {
		label = 'Orange',
		weight = 44,
		stack = true,
		close = true,
		description = nil
	},
	['tomate'] = {
		label = 'Tomate',
		weight = 41,
		stack = true,
		close = true,
		description = nil
	},
	['kuerbis'] = {
		label = 'Kürbis',
		weight = 15,
		stack = true,
		close = true,
		description = nil
	},
	['zwiebel'] = {
		label = 'Zwiebel',
		weight = 20,
		stack = true,
		close = true,
		description = nil
	},
	['gewuerz'] = {
		label = 'Gewürz',
		weight = 2,
		stack = true,
		close = true,
		description = nil
	},
	['sauce'] = {
		label = 'Sauce',
		weight = 250,
		stack = true,
		close = true,
		description = nil
	},
	['fleisch'] = {
		label = 'Fleisch',
		weight = 250,
		stack = true,
		close = true,
		description = nil
	},
	['teig'] = {
		label = 'Teig',
		weight = 150,
		stack = true,
		close = true,
		description = nil
	},
	['aramidfasern'] = {
		label = 'Aramidfasern',
		weight = 20,
		stack = true,
		close = true,
		description = nil
	},
	['holz'] = {
		label = 'Holz',
		weight = 800,
		stack = true,
		close = true,
		description = nil
	},
	['wolle'] = {
		label = 'Wolle',
		weight = 10,
		stack = true,
		close = true,
		description = nil
	},
	['eisenerz'] = {
		label = 'Eisenerz',
		weight = 800,
		stack = true,
		close = true,
		description = nil
	},
	['eisenbarren'] = {
		label = 'Eisenbarren',
		weight = 2000,
		stack = true,
		close = true,
		description = nil
	},
	['aramid'] = {
		label = 'Aramid',
		weight = 100,
		stack = true,
		close = true,
		description = nil
	},
	['farbe'] = {
		label = 'Farbe',
		weight = 2,
		stack = true,
		close = true,
		description = nil
	},
	['faserpapier'] = {
		label = 'Faserpapier',
		weight = 112,
		stack = true,
		close = true,
		description = 'illegal'
	},
	['blatt5dollarnoten'] = {
		label = 'Blatt 5$ Noten(40)',
		weight = 1350,
		stack = true,
		close = true,
		description = 'illegal'
	},
	['frische5dollarfalsch'] = {
		label = 'Frische 5$ Falschgeldnote',
		weight = 35,
		stack = true,
		close = true,
		description = 'illegal'
	},
	['plastik'] = {
		label = 'Plastik',
		weight = 250,
		stack = true,
		close = true,
		description = nil
	},
	['holzfasern'] = {
		label = 'Holzfasern',
		weight = 8,
		stack = true,
		close = true,
		description = nil
	},
	['farbfasern'] = {
		label = 'Farbfasern',
		weight = 10,
		stack = true,
		close = true,
		description = nil
	},
	['tuch'] = {
		label = 'Tuch',
		weight = 50,
		stack = true,
		close = true,
		description = nil
	},
	['kautschuk'] = {
		label = 'Kautschuk',
		weight = 50,
		stack = true,
		close = true,
		description = nil
	},
	['gummi'] = {
		label = 'Gummi',
		weight = 30,
		stack = true,
		close = true,
		description = nil
	},
--- Tools ---
	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},
	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},
	['schere'] = {
		label = 'Schere',
		weight = 100,
		stack = false,
		close = true,
		durability = 0.03,
		description = nil
	},
	['axt'] = {
		label = 'Axt',
		weight = 4500,
		stack = false,
		close = true,
		description = nil
	},
	['presslufthammer'] = {
		label = 'Presslufthammer',
		weight = 5500,
		stack = false,
		close = true,
		description = nil
	},
	['gps'] = {
		label = 'GPS System',
		weight = 500,
		stack = true,
		close = true
	},
	['laptop_h'] = {
		label = 'Laptop',
		weight = 2200,
		stack = false,
		close = true,
		description = 'Dieser Laptop hat ein Hackerdevice'
	},

--- Crime ---
	['lockpick'] = {
		label = 'Dietrich',
		weight = 160,
	},
	['defklammer'] = {
		label = 'kaputte Büroklammer',
		weight = 10,
	},
	['blowpipe'] = {
		label = 'Lötlampe',
		weight = 1700,
		stack = false,
		close = true,
		description = nil
	},
--- Drugs Seeding ---
 	['afghan_seed'] = {
		label = 'Afghan Samen',
		weight = 0,
		stack = true,
		close = true,
		description = 'Legal bis zu einer Menge von 5 Stück.'
	},
	['duenger'] = {
		label = 'Dünger',
		weight = 150,
		stack = true,
		close = true,
		description = 'Pflanzendünger'
	},
--- Drugs ---
	['joint'] = {
		label = 'Joint',
		weight = 4,
		stack = true,
		close = true,
		description = 'Droge',
		client = {
			status = { hunger = -50000 },
			anim = 'smokejoint',
			prop = 'joint',
			usetime = 20000,
			}
	},
	['kokablatt'] = {
		label = 'Kokablatt',
		weight = 5,
		stack = true,
		close = true,
		description = 'Droge'
	},
	['kokapaste'] = {
		label = 'Kokapaste',
		weight = 2,
		stack = true,
		close = true,
		description = 'Droge'
	},
	['kokain'] = {
		label = 'Kokain',
		weight = 1,
		stack = true,
		close = true,
		description = 'Droge',
		client = {
			status = { thirst = 20000 },
			anim = {scenario = 'WORLD_HUMAN_DRUG_PROCESSORS_COKE', clip = ''},
			--prop = 'kokain',
			usetime = 3000,
			}
	},
	['opium'] = {
		label = 'Opium',
		weight = 1,
		stack = true,
		close = true,
		client = {
			status = { hunger = -200000 },
			usetime = 10000,
			},
		description = 'Droge'
	},
	['rohopium'] = {
		label = 'Rohopium',
		weight = 1,
		stack = true,
		close = true,
		description = 'Drogen-Grundstoff'
	},
	['mohn'] = {
		label = 'Mohn',
		weight = 10,
		stack = true,
		close = true,
		description = 'Droge'
	},
	['heroin'] = {
		label = 'Heroin',
		weight = 1,
		stack = true,
		close = true,
		description = 'Droge'
	},
	['afghan_pack1'] = {
		label = 'Afghan 1g Pack',
		weight = 1,
		stack = true,
		close = true,
		description = 'Droge'
	},
	['afghan_wet'] = {
		label = 'Afghan feucht',
		weight = 2,
		stack = true,
		close = true,
		description = 'Droge'
	},
	['afghan_dry'] = {
		label = 'Afghan getrocknet',
		weight = 1,
		stack = true,
		close = true,
		description = 'Droge'
	},
	['afghan_joint'] = {
		label = 'Afghan Joint',
		weight = 4,
		stack = true,
		close = true,
		description = 'Droge',
		client = {
			status = { hunger = -50000, joint = 20000 },
		--	anim = 'smokejoint',
		--	prop = 'joint',
			usetime = 8000
		}
	},
	['beutel1'] = {
		label = 'Beutel für 1g',
		weight = 1,
		stack = true,
		close = true
	},
	['beutel1_pack'] = {
		label = 'Packung 50x Beutel für 1g',
		weight = 55,
		stack = true,
		close = true,
		description = 'Umverpackung'
	},
--- Sonstige FUN Taschen etc. ---
	['garbage'] = {
		label = 'Müll',
	},
	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = 'prop_cs_panties_02', pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},
	['bag'] = {
		label = 'Tasche',
		weight = 1500,
		stack = false,
		close = true,
		consume = 1,
		description = nil,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},
	['nobag'] = {
		label = 'keine Tasche',
		weight = 1,
		stack = false,
		close = true,
		consume = 0,
		description = nil,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},
	['bag2'] = {
		label = 'Tasche II',
		weight = 1300,
		stack = false,
		close = true,
		consume = 1,
		description = nil,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},
	['nobag2'] = {
		label = 'keine Tasche II',
		weight = 1,
		stack = false,
		close = true,
		consume = 0,
		description = nil,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},
	['kleidertasche'] = {
		label = "Kleidertasche",
		description = 'Eine kleine Tasche mit Deinen Outfits',
		weight = 2500,
		stack = false,
		close = true,
		consume = 0,
	},
	['waschset'] = {
		label = 'Waschset',
		weight = 1150,
		stack = true,
		close = true,
		description = 'Fahrzeugwäsche des letzten Fahrzeugs.'
	},
	['fixkit'] = {
		label = 'Reparatur Set',
		weight = 2500,
		stack = true,
		close = true,
		description = 'Fahrzeugreparatur des letzten Fahrzeugs.'
	},
	['blaettchen'] = {
		label = 'Packung Blättchen',
		weight = 50,
		stack = true,
		close = true,
		consume = 1,
		description = 'Packung'
	},
	['eblaettchen'] = {
		label = 'Blättchen',
		weight = 1,
		stack = true,
		close = true,
		consume = 1,
		description = 'einzelne Blättchen'
	},
	['kevlar'] = {
		label = 'Schwere Schutzweste',
		weight = 2500,
		stack = false,
		close = true,
		allowArmed = true,
		description = 'Bester Schutz',
		client = {
			status = { armour = 100 },
			anim = { dict = 'anim@heists@narcotics@funding@gang_idle', clip = 'gang_chatting_idle01'},
			usetime = 4000,
			}
	},
	['kevlarm'] = {
		label = 'Mittlere Schutzweste',
		weight = 2000,
		stack = false,
		close = true,
		allowArmed = true,
		description = nil,
		client = {
			status = { armour = 60 },
			anim = { dict = 'anim@heists@narcotics@funding@gang_idle', clip = 'gang_chatting_idle01'},
			usetime = 4000,
			}
	},
	['kevlars'] = {
		label = 'Leichte Schutzweste',
		weight = 1800,
		stack = false,
		close = true,
		allowArmed = true,
		description = nil,
		client = {
			status = { armour = 35 },
			anim = { dict = 'anim@heists@narcotics@funding@gang_idle', clip = 'gang_chatting_idle01'},
			usetime = 4000,
		}
	},
	['cigarette'] = {
		label = 'Zigarette',
		weight = 1,
		stack = true,
		close = true,
		description = nil,
		client = {
			status = { drunk = -250000 },
			--anim = { dict = 'amb@world_human_smoking@male@male_a@enter', clip = 'enter' },
			--prop = { model = 'brum_joint_98_special', pos = { x = 0.07, y = 0.07, z = 0.07}, rot = { x = 0.0, y = -13.5, z = 90.5} },
			usetime = 1000,
		}
	},
	['cigar'] = {
		label = 'Zigarre',
		weight = 1,
		stack = true,
		close = true,
		description = nil,
		client = {
			status = { drunk = -350000 },
			--anim = { dict = 'amb@world_human_smoking@male@male_a@enter', clip = 'enter' },
			--prop = { model = 'brum_joint_98_special', pos = { x = 0.07, y = 0.07, z = 0.07}, rot = { x = 0.0, y = -13.5, z = 90.5} },
			usetime = 1000,
			}
	},
	['warndreieck'] = {
		label = 'Warndreieck',
		weight = 500,
		stack = true,
		close = true,
		description = nil
	},
	['warnweste'] = {
		label = 'Warnweste',
		weight = 150,
		stack = true,
		close = true,
		description = nil
	},
}
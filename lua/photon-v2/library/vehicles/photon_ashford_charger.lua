if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()
local sequence = Photon2.SequenceBuilder.New

VEHICLE.Title 		= "Ashford Charger"
VEHICLE.Vehicle		= "15charger_fm2_sgm"
VEHICLE.Category 	= "Photon 2: Kitsune County"
VEHICLE.Author		= "SuperMighty"

VEHICLE.SubMaterials = {
	[4] = "mighters/liveries/2015_kitsune_charger",
}

VEHICLE.Siren = {
	[1] = "whelen_epsilon",
}

VEHICLE.Equipment = {
	{
		Category = "Standard",
		Options = {
			{
				Option = "Standard Lighting",
				VirtualComponents = {
					{
						Component = "mighty_standard_15charger",
						Segments = {
							["DRL_Rear"] = {
								Sequences = {
									PARK =  sequence():Steady(1, 20):Blink( 1, 3):Steady(1, 20),
								},
					        },
						},
						Inputs = {
							["Emergency.Warning"] = {
								["PARK"] = { DRL_Rear = "PARK" },
							}
						},
						Flags = {
							ParkMode = { "Emergency.Warning", "PARK" },
						}
					},
				}
			}
		},
    },
    {
		Category = "Body",
		Options ={
			{
				Option = "Lighting",
				Props = {
				},
				Components = {
					{
						Component = "photon_mighty_libertyii",
						Position = Vector( 0, -21, 75.5 ),
						Angles = Angle( -0.4, 90, 0 ),
						Scale = 0.95,
					},
				}
			}
		} 
	},
	{
		Category = "Spotlights",
		Options ={
			{
				Option = "Spotlights",
				Components = {
					{
						Component = "photon_whe_par46_left",
						Position = Vector( -35.4, 31, 56 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_whe_par46_right",
						Position = Vector( 35.4, 31, 56 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
				},
			}
		}
	},
	{
		Category = "Pushbar",
		Options ={
			{
				Option = "Whelen Ion",
                BodyGroups = {
					{ BodyGroup = "Pushbar", Value = 3 }
				},
				Components = {
					{
						Component = "photon_mighty_ion",
						Position = Vector( -10, 124, 40.7 ),
						Angles = Angle( 0, 0, 0),
						Scale = 1,
						StateMap = "[R] 1 2",
						Phase = "D",
					},
					{
						Component = "photon_mighty_ion",
						Position = Vector( 10, 124, 40.7 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						StateMap = "[B] 1 2",
						Phase = "C",
					},
				}
			}
		}
	},
	{
		Category = "Bodygroups",
		Options = {
			{
				Option = "Disable",
                BodyGroups = {
					{ BodyGroup = "badge", Value = 2 },
					{ BodyGroup = "wheels_front", Value = 2 },
					{ BodyGroup = "wheels_rear", Value = 2 },
				}
			}
		}
	},
	{
		Category = "Misc",
		Options ={
			{
				Option = "Grille",
                Props = {
				},
				Components = {
					{
						Component = "photon_sena_police_siren",
						Position = Vector( 0, 110, 17.8 ),
						Angles = Angle( 0, 0, 0 ),
						Siren = "whelen_epsilon",
					}
				}
			}
		}
	},
	{
		Category = "Rear",
		Options ={
			{
				Option = "Whelen Dominator",
				Components = {
					{
						Component = "photon_mighty_dominator8",
						Position = Vector( 0, -85.5, 58.6 ),
						Angles = Angle( 180, 0, 0 ),
						StateMap = "[A] 1 2 3 4 5 6 7 8",
						Scale = 1,
						Inputs = {
							["Emergency.Directional"] = {
								["RIGHT"] = { ALL = "LEFT" },
								["CENOUT"] = { ALL = "CENOUT" },
								["LEFT"] = { ALL = "RIGHT" },
							},
						},
					},
					{
						Component = "photon_kitsune_plate2",
						Position = Vector( 0, -125, 28.5 ),
						Angles = Angle( -10.15, -90, 0 ),
						Scale = 1,
						Bones = {
							["bone003"] = { Vector(0, 0, 0), Angle(0, 0, 0), 1 },
							["bone004"] = { Vector(0, -0, 0), Angle(0, 0, 0), 1 },
						},
						Inputs = {
							["Emergency.Warning"] = {
								["PARK"] = { PARK ="PARK2", },
							},
							["Vehicle.Brake"] = {
								["BRAKE"] = "ON",
							},
						},
						Flags = {
							ParkMode = { "Emergency.Warning", "PARK" },
						}
					},
				},
				Props = {
					{
						Name = "@rear_plate",
						Model = "models/xenosprops/jp_plate/jp_plate.mdl",
						Position = Vector( 0, -126.8, 30 ),
						Angles = Angle( -10.15, -90, 0 ),
						Scale = 0.95,
						SubMaterials = {
							[0] = "mighters/liveries/kitsune_plate",
						},
					},
					{
						Name = "@front_plate",
						Model = "models/xenosprops/jp_plate/jp_plate.mdl",
						Scale = 0.95,
						Position = Vector( 0, 123.6, 22.12 ),
						Angles = Angle( 2, 90, 0 ),
                        SubMaterials = {
							[0] = "mighters/liveries/kitsune_plate",
						},
					},
				}
			}
		}
	},
}

VEHICLE.Schema = {
    ["Emergency.Warning"] = {
        { Label = "PRIMARY" },
        { Mode = "MODE3", Label = "RESPONSE" },
    },
}

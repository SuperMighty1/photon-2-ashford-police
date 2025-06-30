if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "Ashford Tahoe"
VEHICLE.Vehicle		= "19tahoe_sgm"
VEHICLE.Category 	= "Photon 2: Ashford Police"
VEHICLE.Author		= "SuperMighty"

VEHICLE.SubMaterials = {
	[21] = "mighters/liveries/ashford_tahoe_patrol",
}

VEHICLE.Siren = {
	[1] = "whelen_epsilon",
}

VEHICLE.BodyGroups = {
	["pushbar"] = 0,
	["windowbars"] = 1,
	["partition"] = 1,
	["lightbar"] = 1,
	["console"] = 0,
	["ions"] = 1,
	["dominator"] = 1,
	["mirrors"] = 0,
	["keychain"] = 0,
	["trunk_badge"] = 0,
	["dpillar_edge"] = 1,
	["grille"] = 1,
	["plateholder"] = 1,
	["wheels"] = 0,
}

VEHICLE.Equipment = {
	{
		Category = "Standard Vehicle Lighting",
		Options ={
			{
				Option = "Standard Lighting",
				VirtualComponents = {
					{
						Component = "mighty_standard_sgmtahoe",
					}
				}
			}
		}
	},
	{
		Category = "Lightbar",
		Options ={
			{
				Option = "Lightbar",
				Props = {
					{
						Name = "Strap",
						Model = "models/supermighty/mesh/tahoe_strap.mdl",
						Position = Vector( 0, -10, 89.76 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1
					}
				},
				Components = {
					{
						Component = "photon_ashford_libertyii",
						Position = Vector( 0, -10, 89.5 ),
						Angles = Angle( 1, 90, 0 ),
						Scale = 1,
						StateMap = "[B] 1 3 5 7 9 11 13 15 17 19 21 23 25 2 4 6 8 10 12 14 16 18 20 22 24 26 [W] 27 28 29 30 31 32 33 34 35 36 37 38",
					},
				},
			},
		},	
	},
	{
		Category = "Spotlights",
		Options ={
			{
				Option = "Spotlights",
				Components = {
					{
						Component = "photon_whe_par46_left",
						Position = Vector( -37, 38, 70 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_whe_par46_right",
						Position = Vector( 37, 38, 70 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
				},
			}
		}
	},
	{
		Category = "Mirror Lights",
		Options ={
			{
				Option = "Ions",
				Components = {
					{
						Component = "photon_ashford_ion_blank",
						Position = Vector( 11.4, 5.5, 32),
						Angles = Angle( 2.5, 62, 5 ),
						Scale = 1,
						StateMap = "[B] 1 2",
						FollowBone = "door_fr",
						Phase = "D",
					},
					{
						Component = "photon_ashford_ion_blank",
						Position = Vector( 11.4, -5.5, 32),
						Angles = Angle( -2, 116, 5 ),
						Scale = 1,
						StateMap = "[B] 1 2",
						FollowBone = "door_fl",
						Phase = "C",
					},
				},
			}
		}
	},
	{
		Category = "Rear Side Window",
		Options ={
			{
				Option = "Ions",
				Components = {
					{
						Component = "photon_ashford_ion",
						Position = Vector( -41.7, -94, 62.7 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						StateMap = "[B] 1 2",
						Phase = "D",
					},
					{
						Component = "photon_ashford_ion",
						Position = Vector( 41.7, -94, 62.7 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1,
						StateMap = "[B] 1 2",
						Phase = "C",
					},
				},
			}
		}
	},
	{
		Category = "Skirt Lighting",
		Options ={
			{
				Option = "Ions",
				Components = {
					{
						Component = "photon_ashford_ion",
						Position = Vector( -41.7, 41, 15 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						StateMap = "[B] 1 2",
						Phase = "D",
					},
					{
						Component = "photon_ashford_ion",
						Position = Vector( -41.7, -34, 15 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						StateMap = "[B] 1 2",
						Phase = "D",
					},
					{
						Component = "photon_ashford_ion",
						Position = Vector( 41.7, 41, 15 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1,
						StateMap = "[B] 1 2",
						Phase = "C",
					},
					{
						Component = "photon_ashford_ion",
						Position = Vector( 41.7, -34, 15 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1,
						StateMap = "[B] 1 2",
						Phase = "C",
					},
				},
			}
		}
	},
	{
		Category = "Rear Trunk Lighting",
		Options ={
			{
				Option = "Whelen Dominator",
				Components = {
					{
						Component = "photon_mighty_dominator8",
						Position = Vector( 0, -106.8, 77.5 ),
						Angles = Angle( 0, 0, 0 ),
						StateMap = "[A] 1 2 3 4 5 6 7 8",
						Scale = 1
					},
					{
						Component = "photon_ashford_plate",
						Position = Vector( 16.4, -39.4, 0 ),
						Angles = Angle( 0, 0, -90 ),
						Scale = 1,
						Bones = {
							["bone002"] = { Vector(0, 0.3, 0), Angle(0, 0, 0), 1 },
							["bone001"] = { Vector(0, -0.3, 0), Angle(0, 0, 0), 1 },
						},
						StateMap = "[B] 1 2",
						FollowBone = "trunk",
						--Phase = "C",
					},
					{
						Component = "photon_ashford_ion",
						Position = Vector( 13.6, -54.2, 20 ),
						Angles = Angle( 90, 0, 180 ),
						Scale = 1,
						StateMap = "[B] 1 2",
						FollowBone = "trunk",
						Phase = "C",
					},
					{
						Component = "photon_ashford_ion",
						Position = Vector( 13.6, -54.2, -20 ),
						Angles = Angle( 90, 0, 180 ),
						Scale = 1,
						StateMap = "[B] 1 2",
						FollowBone = "trunk",
						Phase = "D",
					},
				},
				Props = {
					{
						Name = "@rear_plate",
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 18, -39.5, 0 ),
						Angles = Angle( 0, 0, -90 ),
						Scale = 1,
						FollowBone = "trunk",
						SubMaterials = {
							[1] = "mighters/liveries/plate/plate_tahoe_regular",
						},
					},
				}
			}
		}
	},
	{
		Category = "Pushbar",
		Options ={
			{
				Option = "Whelen Ion",
                BodyGroups = {
					{ BodyGroup = "Pushbar", Value = 0 }
				},
				Components = {
					{
						Component = "photon_ashford_ion",
						Position = Vector( -11, 118, 43.8 ),
						Angles = Angle( 1.5, 7.5, 0),
						Scale = 1.03,
						StateMap = "[B] 1 2",
						Phase = "D",
					},
					{
						Component = "photon_ashford_ion",
						Position = Vector( 11, 118, 43.8 ),
						Angles = Angle( -1.5, -7.5, 0 ),
						Scale = 1.03,
						StateMap = "[B] 1 2",
						Phase = "C",
					},
				}
			}
		}
	},
	{
		Category = "OuterEdge",
		Options ={
			{
				Option = "OuterEdge",
				Components = {
					{
						Component = "photon_ashford_ion",
						Position = Vector( -34.8, -113, 77 ),
						Angles = Angle( 72, -180, 0 ),
						Scale = 1,
						StateMap = "[B] 1 2",
						Phase = "D",
					},
					{
						Component = "photon_ashford_ion",
						Position = Vector( 34.8, -113, 77 ),
						Angles = Angle( -72, -180, 0 ),
						Scale = 1,
						Phase = "C",
					},
					{
						Component = "photon_ashford_ion",
						Position = Vector( -36.5, -116.2, 71.1 ),
						Angles = Angle( 72, -180, 0 ),
						Scale = 1,
						StateMap = "[B] 1 2",
						Phase = "D",
					},
					{
						Component = "photon_ashford_ion",
						Position = Vector( 36.5, -116.2, 71.1 ),
						Angles = Angle( -72, -180, 0 ),
						Scale = 1,
						Phase = "C",
					},
					{
						Component = "photon_ashford_ion",
						Position = Vector( -38, -118.7, 65 ),
						Angles = Angle( 75, -180, 0 ),
						Scale = 1,
						StateMap = "[B] 1 2",
						Phase = "D",
					},
					{
						Component = "photon_ashford_ion",
						Position = Vector( 38, -118.7, 65 ),
						Angles = Angle( -75, -180, 0 ),
						Scale = 1,
						Phase = "C",
					},
				},
                Props = {
					{
						Name = "Edge",
						Model = "models/sentry/props/outeredge_19tahoe.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1
					}
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
						Position = Vector( 0, 113.6, 37.15 ),
						Angles = Angle( 0, 0, 0 ),
						Siren = "whelen_epsilon",
					}
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

-- PHOTON2_DEBUG_VEHICLE_HARDRELOAD = false
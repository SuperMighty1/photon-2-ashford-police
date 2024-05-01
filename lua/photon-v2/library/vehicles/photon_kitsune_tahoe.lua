if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "Kitsune Tahoe"
VEHICLE.Vehicle		= "19tahoe_sgm"
VEHICLE.Category 	= "Photon 2: Kitsune County"
VEHICLE.Author		= "SuperMighty"

VEHICLE.SubMaterials = {
	[21] = "mighters/liveries/2019_kitsune_tahoe",
	[22] = "mighters/mesh/red_glass",
	[0] = "mighters/mesh/ext_misc_int", -- skin
}

VEHICLE.Siren = {
	[1] = "whelen_epsilon",
}

VEHICLE.Equipment = {
	{
		Category = "Standard",
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
		Catezgory = "Body",
		Options ={
			{
				Option = "Lighting",
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
						Component = "photon_mighty_libertyii",
						Position = Vector( 0, -10, 89.5 ),
						Angles = Angle( 1, 90, 0 ),
						Scale = 1,
					},
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
					{
						Component = "photon_mighty_ion_blank",
						Position = Vector( 11.4, 5.5, 32),
						Angles = Angle( 2.5, 62, 5 ),
						Scale = 1,
						StateMap = "[B] 1 2",
						FollowBone = "door_fr",
						Phase = "D",
					},
					{
						Component = "photon_mighty_ion_blank",
						Position = Vector( 11.4, -5.5, 32),
						Angles = Angle( -2, 116, 5 ),
						Scale = 1,
						StateMap = "[R] 1 2",
						FollowBone = "door_fl",
						Phase = "C",
					},
					{
						Component = "photon_mighty_ion",
						Position = Vector( -41.7, 41, 15 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						StateMap = "[R] 1 2",
						Phase = "D",
					},
					{
						Component = "photon_mighty_ion",
						Position = Vector( -41.7, -34, 15 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						StateMap = "[R] 1 2",
						Phase = "D",
					},
					{
						Component = "photon_mighty_ion",
						Position = Vector( -41.7, -94, 62.7 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						StateMap = "[R] 1 2",
						Phase = "D",
					},
					{
						Component = "photon_mighty_ion",
						Position = Vector( 41.7, 41, 15 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1,
						StateMap = "[B] 1 2",
						Phase = "C",
					},
					{
						Component = "photon_mighty_ion",
						Position = Vector( 41.7, -34, 15 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1,
						StateMap = "[B] 1 2",
						Phase = "C",
					},
					{
						Component = "photon_mighty_ion",
						Position = Vector( 41.7, -94, 62.7 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1,
						StateMap = "[B] 1 2",
						Phase = "C",
					},
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
						Position = Vector( 0, -106.8, 77.5 ),
						Angles = Angle( 0, 0, 0 ),
						StateMap = "[A] 1 2 3 4 5 6 7 8",
						Scale = 1
					},
					{
						Component = "photon_kitsune_plate",
						Position = Vector( 16.4, -39.4, 0 ),
						Angles = Angle( 0, 0, -90 ),
						Scale = 1,
						Bones = {
							["bone002"] = { Vector(0, 0.3, 0), Angle(0, 0, 0), 1 },
							["bone001"] = { Vector(0, -0.3, 0), Angle(0, 0, 0), 1 },
						},
						--StateMap = "[R] 1 2",
						FollowBone = "trunk",
						--Phase = "C",
					},
					{
						Component = "photon_mighty_ion",
						Position = Vector( 13.6, -54.2, 20 ),
						Angles = Angle( 90, 0, 180 ),
						Scale = 1,
						StateMap = "[R] 1 2",
						FollowBone = "trunk",
						Phase = "C",
					},
					{
						Component = "photon_mighty_ion",
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
						Model = "models/xenosprops/jp_plate/jp_plate.mdl",
						Position = Vector( 18, -39.5, 0 ),
						Angles = Angle( 0, 0, -90 ),
						Scale = 0.95,
						FollowBone = "trunk",
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
	{
		Category = "Pushbar",
		Options ={
			{
				Option = "Whelen Ion",
                BodyGroups = {
					{ BodyGroup = "Pushbar", Value = 1 }
				},
				Components = {
					{
						Component = "photon_mighty_ion",
						Position = Vector( -14, 123.6, 51.2 ),
						Angles = Angle( 0, 0, 0),
						Scale = 1.03,
						StateMap = "[R] 1 2",
						Phase = "D",
					},
					{
						Component = "photon_mighty_ion",
						Position = Vector( 14, 123.6, 51.2 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.03,
						StateMap = "[B] 1 2",
						Phase = "C",
					},
				}
			}
		}
	},
	{
		Category = "Bodygroups",
		Options ={
			{
				Option = "Disable",
                BodyGroups = {
					{ BodyGroup = "pushbar", Value = 1 },
					{ BodyGroup = "windowbars", Value = 1 },
					{ BodyGroup = "partition", Value = 1 },
					{ BodyGroup = "ions", Value = 1 },
					{ BodyGroup = "lightbar", Value = 1 },
					{ BodyGroup = "dominator", Value = 1 },
					{ BodyGroup = "mirrors", Value = 0 },
				},
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
						Component = "photon_mighty_ion",
						Position = Vector( -34.8, -113, 77 ),
						Angles = Angle( 72, -180, 0 ),
						Scale = 1,
						StateMap = "[R] 1 2",
						Phase = "D",
					},
					{
						Component = "photon_mighty_ion",
						Position = Vector( 34.8, -113, 77 ),
						Angles = Angle( -72, -180, 0 ),
						Scale = 1,
						Phase = "C",
					},
					{
						Component = "photon_mighty_ion",
						Position = Vector( -36.5, -116.2, 71.1 ),
						Angles = Angle( 72, -180, 0 ),
						Scale = 1,
						StateMap = "[R] 1 2",
						Phase = "D",
					},
					{
						Component = "photon_mighty_ion",
						Position = Vector( 36.5, -116.2, 71.1 ),
						Angles = Angle( -72, -180, 0 ),
						Scale = 1,
						Phase = "C",
					},
					{
						Component = "photon_mighty_ion",
						Position = Vector( -38, -118.7, 65 ),
						Angles = Angle( 75, -180, 0 ),
						Scale = 1,
						StateMap = "[R] 1 2",
						Phase = "D",
					},
					{
						Component = "photon_mighty_ion",
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
					{
						Name = "Grille",
						Model = "models/supermighty/mesh/tahoe_misc.mdl",
						Position = Vector( 0, 0, -0 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "mighters/mesh/ext_misc_ext"
						},
					}
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
if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "Unmarked Kitsune Tahoe"
VEHICLE.Vehicle		= "19tahoe_sgm"
VEHICLE.Category 	= "Photon 2: Kitsune County"
VEHICLE.Author		= "SuperMighty"

VEHICLE.SubMaterials = {
	[21] = "mighters/liveries/unmarked",
	[22] = "mighters/mesh/red_glass",
	[0] = "mighters/mesh/ext_misc_int", -- skin
}

VEHICLE.Siren = {
	[1] = "whelen_epsilon",
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
						Component = "photon_mighty_ion",
						Position = Vector( -41.7, -94, 62.7 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						StateMap = "[R] 1 2",
						Phase = "D",
					},
					{
						Component = "photon_mighty_ion",
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
						Position = Vector( -11, 118, 43.75 ),
						Angles = Angle( 1.2, 4, 0),
						Scale = 1.02,
						StateMap = "[R] 1 2",
						Phase = "D",
					},
					{
						Component = "photon_mighty_ion",
						Position = Vector( 11, 118, 43.75 ),
						Angles = Angle( -1.2, -4, 0 ),
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
		Category = "Bodygroups",
		Options ={
			{
				Option = "Disable",
                BodyGroups = {
					{ BodyGroup = "pushbar", Value = 0 },
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
	{
		Category = "Bone Category",
		Options = {
		   {
			  Option = "Big Wheel",
			  Props = {
				{
				Model = "models/supermighty/mesh/wheel/tahoe_wheel.mdl",
				Position = Vector( 0, 0, 0 ),
				Angles = Angle( 0, 0, 0 ),
				Scale = 1,
				Bones = {
					["rim"] = { 
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Follow = { Attachment = "wheel_fl" }
					},
				}
				},
				{
					Model = "models/supermighty/mesh/wheel/tahoe_wheel.mdl",
					Position = Vector( 0, 0, 0 ),
					Angles = Angle( 0, 0, 0 ),
					Scale = 1,
					Bones = {
						["rim"] = { 
							Position = Vector( 0, 0, 0 ),
							Angles = Angle( 0, 0, 0 ),
							Scale = 1,
							Follow = { Attachment = "wheel_fr" }
						},
					}
				},
				{
					Model = "models/supermighty/mesh/wheel/tahoe_wheel.mdl",
					Position = Vector( 0, 0, 0 ),
					Angles = Angle( 0, 0, 0 ),
					Scale = 1,
					Bones = {
						["rim"] = { 
							Position = Vector( 0, 0, 0 ),
							Angles = Angle( 0, 0, 0 ),
							Scale = 1,
							Follow = { Attachment = "wheel_rr" }
						},
					}
				},
				{
					Model = "models/supermighty/mesh/wheel/tahoe_wheel.mdl",
					Position = Vector( 0, 0, 0 ),
					Angles = Angle( 0, 0, 0 ),
					Scale = 1,
					Bones = {
						["rim"] = { 
							Position = Vector( 0, 0, 0 ),
							Angles = Angle( 0, 0, 0 ),
							Scale = 1,
							Follow = { Attachment = "wheel_rl" }
						},
					}
				},
			  },
			  Bones = {
				 {
					Bone = "fl_wheel",
					Position = Vector(-1.75, 0, 0),
					Angles = Angle(0, 0, 0),
					-- Makes the front-left wheel 2x normal size
					Scale = 0
				 },
				 {
					Bone = "fr_wheel",
					Position = Vector(-1.75, 0, 0),
					Angles = Angle(0, 0, 0),
					-- Makes the front-left wheel 2x normal size
					Scale = 0
				 },
				 {
					Bone = "br_wheel",
					Position = Vector(-1.75, 0, 0),
					Angles = Angle(0, 0, 0),
					-- Makes the front-left wheel 2x normal size
					Scale = 0
				 },
				 {
					Bone = "bl_wheel",
					Position = Vector(-1.75, 0, 0),
					Angles = Angle(0, 0, 0),
					-- Makes the front-left wheel 2x normal size
					Scale = 0
				 },
			  }
		   }
		}
	}
}

VEHICLE.Schema = {
    ["Emergency.Warning"] = {
        { Label = "PRIMARY" },
        { Mode = "MODE3", Label = "RESPONSE" },
    },
}

-- PHOTON2_DEBUG_VEHICLE_HARDRELOAD = false
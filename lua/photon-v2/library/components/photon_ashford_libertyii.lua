if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "Photon"

COMPONENT.Credits = {
	Model = "SGM",
	Code = "Schmal"
}

COMPONENT.PrintName = [[Whelen Liberty II Kitsune]]

COMPONENT.Model = "models/supermighty/whelen_liberty_ii_sena.mdl"

COMPONENT.SubMaterials = {
	-- [0] = "photon/textures/mx7000_glass_colored",
	-- [1] = "photon/textures/mx7000_glass_outer",
	-- [2] = "photon/textures/mx7k",
	-- [3] = "photon/textures/glass_mx7000",
	-- [2] = "photon/textures/mx7000",
	-- [0] = nil,
	-- [2] = nil
}

local blue = { r = 0, g = 255, b = 255 }
local red = { r = 255, g = 64, b = 0 }
local amber = { r = 255, g = 100, b = 0 }

COMPONENT.Templates = {
	["Mesh"] = {
		Mesh_static = {
			Model = "models/supermighty/photon_2/whelen_liberty_ii_sena_mesh.mdl",
			Scale = 1.0,
			IntensityGainFactor = 5,
			IntensityLossFactor = 1
		}
	},
	["2D"] = {
		Primary = {
			Width 	= 8.7,
			Height	= 8.5,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_primary_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_primary_detail.png").MaterialName,
			-- Bloom = PhotonMaterial.GenerateBloomQuad("photon/lights/sm_whe_lib_ii_primary_bloom.png").MaterialName,
			Scale = 2
		},
		Corner = {
			Width 	= 12.8,
			Height	= 16,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_corner_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_corner_detail.png").MaterialName,
			-- Bloom = PhotonMaterial.GenerateBloomQuad("photon/lights/sm_whe_lib_ii_corner_bloom.png").MaterialName,
		},
		Takedown = {
			Width 	= 4,
			Height	= 4.3,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_alley_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_alley_shape.png").MaterialName,
			-- Bloom = PhotonMaterial.GenerateBloomQuad("photon/lights/sm_whe_lib_ii_alley_bloom.png").MaterialName,
		},
		Half = {
			Width 	= 4.4,
			Height	= 4.4,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_half_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_half_detail.png").MaterialName,
			-- Bloom = PhotonMaterial.GenerateBloomQuad("photon/lights/sm_whe_lib_ii_half_bloom.png").MaterialName,
		},
		Alley = {
			Width 	= 3,
			Height	= 3,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_alley_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_alley_shape.png").MaterialName,
			-- Bloom = PhotonMaterial.GenerateBloomQuad("photon/lights/sm_whe_lib_ii_alley_bloom.png").MaterialName,
		},
		CornerEdge = {
			Width 	= 4.9,
			Height	= 4,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_corner_edge_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_corner_edge_detail.png").MaterialName,
			-- Bloom = PhotonMaterial.GenerateBloomQuad("photon/lights/sm_whe_lib_ii_corner_edge_bloom.png").MaterialName,
		},
	},
	["Projected"] = {
		TakedownIllumination = {
			Brightness = 2
		},
		AlleyIllumination = {}
	}
}

COMPONENT.StateMap = "[R] 1 3 5 7 9 11 13 15 17 19 21 23 25 [B] 2 4 6 8 10 12 14 16 18 20 22 24 26 [W] 27 28 29 30 31 32 33 34 35 36 37 38"

COMPONENT.Elements = {
	[1] = { "Primary", Vector( 6.29, 7.18, 0.36 ), Angle( 0, -90, 0 ) },
	[2] = { "Primary", Vector( 6.29, -7.18, 0.36 ), Angle( 0, -90, 0 ) },
	[3] = { "Primary", Vector( 6.29, 14.34, 0.36 ), Angle( 0, -90, 0 ) },
	[4] = { "Primary", Vector( 6.29, -14.34, 0.36 ), Angle( 0, -90, 0 ) },
	[5] = { "Half", Vector( 6.29, 23.24, 0.36 ), Angle( 0, -90, 0 ) },
	[6] = { "Half", Vector( 6.29, -23.24, 0.36 ), Angle( 0, -90, 0 ) },
	[7] = { "Corner", Vector( 4.08, 29.49, 0.39 ), Angle( 0, -90 + 45.9, 0 ) },
	[8] = { "Corner", Vector( 4.08, -29.49, 0.39 ), Angle( 0, -90 - 45.9, 0 ) },
	[9] = { "Corner", Vector( -4.08, 29.49, 0.39 ), Angle( 0, 90 - 45.9, 0 ) },
	[10] = { "Corner", Vector( -4.08, -29.49, 0.39 ), Angle( 0, 90 + 45.9, 0 ) },
	[11] = { "Primary", Vector( -6.29, 21.34, 0.36 ), Angle( 0, 90, 0 ) },
	[12] = { "Primary", Vector( -6.29, -21.34, 0.36 ), Angle( 0, 90, 0 ) },
	[13] = { "Primary", Vector( -6.29, 14.28, 0.36 ), Angle( 0, 90, 0 ) },
	[14] = { "Primary", Vector( -6.29, -14.28, 0.36 ), Angle( 0, 90, 0 ) },
	[15] = { "Primary", Vector( -6.29, 7.18, 0.36 ), Angle( 0, 90, 0 ) },
	[16] = { "Primary", Vector( -6.29, -7.18, 0.36 ), Angle( 0, 90, 0 ) },
	[17] = { "Half", Vector( -6.29, 1.24, 0.36 ), Angle( 0, 90, 0 ) },
	[18] = { "Half", Vector( -6.29, -1.24, 0.36 ), Angle( 0, 90, 0 ) },
	[19] = { "CornerEdge", Vector( 6.34, 26.66, 0.39 ), Angle( 0, -90, 0 ) },
	[20] = { "CornerEdge", Vector( 6.34, -26.66, 0.39 ), Angle( 0, -90, 0 ), Width = -4.9 },
	[21] = { "CornerEdge", Vector( 1.2, 31.65, 0.39 ), Angle( 0, 0, 0 ), Width = -4.9 },
	[22] = { "CornerEdge", Vector( 1.2, -31.65, 0.39 ), Angle( 0, 180, 0 ) },
	[23] = { "CornerEdge", Vector( -1.2, 31.65, 0.39 ), Angle( 0, 0, 0 ) },
	[24] = { "CornerEdge", Vector( -1.2, -31.65, 0.39 ), Angle( 0, 180, 0 ), Width = -4.9  },
	[25] = { "CornerEdge", Vector( -6.34, 26.66, 0.39 ), Angle( 0, 90, 0 ), Width = -4.9  },
	[26] = { "CornerEdge", Vector( -6.34, -26.66, 0.39 ), Angle( 0, 90, 0 ) },
	[27] = { "Alley", Vector( 0, 31.65, 0.4 ), Angle( 0, 0, 0 ) },
	[28] = { "Alley", Vector( 0, -31.65, 0.4 ), Angle( 0, 180, 0 ) },

	[29] = { "Takedown", Vector( 6.29, 0, 0.95 ), Angle( 0, -90, 90 ) },
	[30] = { "Takedown", Vector( 6.29, 0, -0.17 ), Angle( 0, -90, 90 ) },

	[31] = { "Takedown", Vector( 6.29, 20, 0.4 ), Angle( 0, -90, 90 ) },
	[32] = { "Takedown", Vector( 6.29, -20, 0.4 ), Angle( 0, -90, 90 ) },

	[33] = { "AlleyIllumination", Vector( 0, 31.65, 0.4 ), Angle( 0, 0, 0 ) },
	[34] = { "AlleyIllumination", Vector( 0, -31.65, 0.4 ), Angle( 0, 180, 0 ) },

	[35] = { "TakedownIllumination", Vector( 6.29, 0, 0.95 ), Angle( 0, -90, 90 ) },
	[36] = { "TakedownIllumination", Vector( 6.29, 0, -0.17 ), Angle( 0, -90, 90 ) },

	[37] = { "TakedownIllumination", Vector( 6.29, 20, 0.4 ), Angle( 0, -90, 90 ) },
	[38] = { "TakedownIllumination", Vector( 6.29, -20, 0.4 ), Angle( 0, -90, 90 ) },
}

COMPONENT.ElementGroups = {
	["ALL"] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32},
	["LEFT"] = { 1, 4, 5, 8, 10, 11, 14, 15, 18, 20, 22, 24, 26 },
	["RIGHT"] = { 3, 2, 6, 7, 19, 21, 23, 25, 9, 13, 16, 17, 12 },
	["TAKEDOWN-INNER"] = { 29, 30 },
	["TAKEDOWN-OUTER"] = { 31, 32 },
	["TAKEDOWN-FRONT"] = { 29, 30, 31, 32, 35, 36, 37, 38 },
	["TAKEDOWN-LEFT"] = { 27, 33 },
	["TAKEDOWN-RIGHT"] = { 28, 34 },
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	Mesh = {
		Frames = {
			[2] = "LEFT", 
			[1] = "RIGHT",
		},
		Sequences = {
			ON = { 1, 0, 1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0, 2, 0 } --1,2,1,2,1,2,3,4,3,4,3,4 }

		}
	},
	Takedown = {
		Frames = {
			[1] = "TAKEDOWN-OUTER",
			[2] = "TAKEDOWN-INNER",
			[3] = "TAKEDOWN-FRONT",
		},
		Sequences = {
			ON = { 2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1},
			STEADY = { 3 },
		}
	},
	LeftAlley = {
		Frames = {
			[1] = "TAKEDOWN-LEFT",
		},
		Sequences = {
			["ON"] = { 1 },
		}
	},
	RightAlley = {
		Frames = {
			[1] = "TAKEDOWN-RIGHT",
		},
		Sequences = {
			["ON"] = { 1 },
		}
	}
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE3"] = {
			Mesh = "ON",
			Takedown = "ON",
		},
	},
	["Emergency.SceneForward"] = {
		["ON"] = {
			Takedown = "STEADY"
		},
		["FLOOD"] = {
			Takedown = "STEADY"
		}
	},
	["Emergency.SceneLeft"] = {
		["ON"] = {
			LeftAlley = "ON"
		}
	},
	["Emergency.SceneRight"] = {
		["ON"] = {
			RightAlley = "ON"
		}
	},
}
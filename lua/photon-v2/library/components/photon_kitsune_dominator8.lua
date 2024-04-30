if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "Photon"

COMPONENT.Credits = {
	Model = "SGM",
	Code = "Schmal"
}

COMPONENT.PrintName = [[Sena Dominator 8]]

COMPONENT.Model = "models/sentry/props/dominator8.mdl"

local blue = { r = 0, g = 255, b = 255 }
local red = { r = 255, g = 64, b = 0 }
local amber = { r = 255, g = 100, b = 0 }

COMPONENT.Templates = {
	["2D"] = {
		Dominator = {
			Width 	= 3.9,
			Height	= 3.9,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sgm_tir3_detail.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sgm_tir3_detail.png").MaterialName,
			--Bloom = PhotonMaterial.GenerateBloomQuad("photon/lights/sgm_tir3_detail.png").MaterialName,
			Scale = 0.37
		},
	},
}

COMPONENT.StateMap = "[R] 1 2 3 4 5 6 7 8"

COMPONENT.Elements = { 
	[1] = { "Dominator", Vector( -14.75, 0.1, 0.01 ), Angle( 0, 180, 0 ) },
    [2] = { "Dominator", Vector( 14.75, 0.1, 0.01 ), Angle( 0, 180, 0 ) },
    [3] = { "Dominator", Vector( -10.52, 0.1, 0.01 ), Angle( 0, 180, 0 ) },
    [4] = { "Dominator", Vector( 10.52, 0.1, 0.01 ), Angle( 0, 180, 0 ) },
    [5] = { "Dominator", Vector( -6.33, 0.1, 0.01 ), Angle( 0, 180, 0 ) },
    [6] = { "Dominator",  Vector( 6.33, 0.1, 0.01 ), Angle( 0, 180, 0 ) },
    [7] = { "Dominator", Vector( -2.14, 0.1, 0.01 ), Angle( 0, 180, 0 ) },
    [8] = { "Dominator", Vector( 2.14, 0.1, 0.01 ), Angle( 0, 180, 0 ) }
}

COMPONENT.ElementGroups = {
	["OUT"] = { 1, 2, 3, 4 },
    ["IN"] = { 5, 6, 7, 8 },
    ["ALL"] = { 1, 2, 3, 4, 5, 6, 7, 8, }
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	ALL = {
		Frames = {
			[1] = "OUT",
            [2] = "IN",
            [3] = "ALL",
			-- TA LEFT --
			[4] = "2",
			[5] = "2 4",
			[6] = "4 6",
			[7] = "6 8",
			[8] = "8 7",
			[9] = "7 5",
			[10] = "5 3",
			[11] = "3 1",
			[12] = "2 1",
			[13] = "2 4 1",
			[14] = "4 6 1 ",
			[15] = "6 8 1",
			[16] = "8 7 1",
			[17] = "7 5 1",
			[18] = "5 3 1",
			[19] = "3 1",
			[20] = "1",
			-- TA CENOUT --
			[21] = "8 7",
			[22] = "5 6 4 3",
			[23] = "1 2",
			[24] = "8 7 1 2",
			[25] = "5 6 4 3 1 2",
			[26] = "1 2",
			-- TA RIGHT --
			[27] = "1",
			[28] = "1 3",
			[29] = "3 5",
			[30] = "5 7",
			[31] = "7 8",
			[32] = "8 6",
			[33] = "6 4",
			[34] = "4 2",
			[35] = "2 1",
			[36] = "2 1",
			[37] = "1 3 2",
			[38] = "3 5 2",
			[39] = "5 7 2",
			[40] = "7 8 2",
			[41] = "8 6 2",
			[42] = "6 4 2",
			[43] = "4 2",
			[44] = "2",
		},
		Sequences = {
			["ON"] = { 1, 1, 1, 1, 2, 2, 2, 2 },
			LEFT = sequence():Sequential( 4, 20 ):Stretch( 3 ):Hold( 1 ):Add( 0 ):Hold( 1 ),
			CENOUT = sequence():Sequential( 21, 26 ):Stretch( 5 ):Hold( 1 ):Add( 0 ):Hold( 1 ),
			RIGHT = sequence():Sequential( 27, 44 ):Stretch( 3 ):Hold( 1 ):Add( 0 ):Hold( 1 ),
		}
	},
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
			ALL = "ON",
		},
		["MODE2"] = {
			ALL = "ON",
		},
		["MODE3"] = {
			ALL = "ON",
		}
	},
    ["Emergency.Directional"] = {
		["LEFT"] = { ALL = "LEFT" },
		["CENOUT"] = { ALL = "CENOUT" },
		["RIGHT"] = { ALL = "RIGHT" },
    }
}
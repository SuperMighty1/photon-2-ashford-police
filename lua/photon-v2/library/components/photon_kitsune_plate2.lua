if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()
COMPONENT.Base = "photon_sos_mpf4_lic_v"
COMPONENT.Title = [[SoundOff Signal mpower Fascia 4" - Horizontal License Mount Kitsune]]

local sequence = Photon2.SequenceBuilder.New

COMPONENT.ElementStates = {
	["2D"] = {
		["~OFF"] = { Intensity = 0, IntensityTransitions = false },
        ["~OFF2"] = { Intensity = 0.55, IntensityTransitions = true },
        ["~R"] = {
            BloomColor = PhotonColor( 255, 60, 0 ):Blend( red ):GetBlendColor(),
		    DrawColor = PhotonColor( 255, 60, 0 ):Blend( red ):GetBlendColor(),
            Inherit = "R",
            Intensity = 1,
            IntensityLoss = 100,
            IntensityTransitions = true,
        },
		["~B"] = {
            Inherit = "B",
            Intensity = 1,
            IntensityLoss = 100,
            IntensityTransitions = true,
        },
	}
}

COMPONENT.Segments = {
	Full = {
		Frames = {
			[1] = "1",
			[2] = "2",
		},
		Sequences = {
            ["STEADY"] = { 1, 0, 1, 0, 1, 1, 1, 1, 2, 0, 2, 0, 2, 2, 2, 2,},
		}
	},
	PARK = {
		Frames = {
			[1] = "[~R] 1 [~OFF2] 2",
			[2] = "[~B] 2 [~OFF2] 1",
		},
		Sequences = {
			["PARK"] = sequence():Alternate( 1, 2, 16 ),
			["PARK2"] = sequence():Alternate( 1, 2, 15),
		}
	},
	Brake = {
		Frames = {
			[1] = "[R] 1 2",
		},
		Sequences = {
            ["ON"] = { 1 },
		}
	}
}
COMPONENT.Patterns = {
	["ON"] = { { "Brake", "ON" } },
}
COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE3"] = { Full = "STEADY" },
	},
}
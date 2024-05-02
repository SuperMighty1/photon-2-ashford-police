if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()
COMPONENT.Base = "photon_sos_mpf4_lic_v"
COMPONENT.Title = [[SoundOff Signal mpower Fascia 4" - Horizontal License Mount Kitsune]]

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	Full = {
		Frames = {
			[1] = "1",
			[2] = "2",
		},
		Sequences = {
            ["STEADY"] = { 1, 0, 1, 0, 1, 1, 1, 1, 2, 0, 2, 0, 2, 2, 2, 2,},
		}
	}
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
        ["MODE1"] = {},
        ["MODE2"] = {},
		["MODE3"] = { Full = "STEADY" },
	}
}
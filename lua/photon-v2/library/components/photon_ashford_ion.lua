if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "Photon"

COMPONENT.Credits = {
	Model = "SGM",
	Code = "Schmal"
}

COMPONENT.PrintName = [[Kitsune Whelen Ion]]

COMPONENT.Model = "models/sentry/props/ion.mdl"


COMPONENT.Templates = {
	["2D"] = {
		Left = {
			Width 	= 6.8,
			Height	= 7,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sgm_ion_left_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sgm_ion_left_detail.png").MaterialName,
		    -- Bloom = PhotonMaterial.GenerateBloomQuad("photon/lights/sgm_ion_left_bloom.png").MaterialName,
			Scale = 2
		},
        Right = {
			Width 	= 6.8,
			Height	= 7,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sgm_ion_right_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sgm_ion_right_detail.png").MaterialName,
		    --	Bloom = PhotonMaterial.GenerateBloomQuad("photon/lights/sgm_ion_right_bloom.png").MaterialName,
			Scale = 2
		},
	},
}

COMPONENT.StateMap = "[B] 1 2"

COMPONENT.Elements = { 
	[1] = { "Left", Vector( 0, 0, 0 ), Angle( 0, 0, 0 ) },
    [2] = { "Right", Vector( 0, -0, 0 ), Angle( 0, 0, 0 ) },
}

COMPONENT.ElementGroups = {
	["LEFT"] = { 1, 2 },
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	Mesh = {
		Frames = {
			[1] = "LEFT",
		},
		Sequences = {
			["ON"] = { 1 },
			["ON:A"] = { 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
			["ON:B"] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1 },
			--["ON:C"] = { 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
			["ON:C"] = { 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, },
			["ON:D"] = { 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1,},
		}
	},
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE3"] = {
			Mesh = "ON",
		},
	}
}
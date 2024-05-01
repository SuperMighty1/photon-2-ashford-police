if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent() --[[@as PhotonLibraryComponent]]

COMPONENT.Author = "Photon"
COMPONENT.Credits = {
	Vehicle = "SGM",
	Code = "Schmal"
}

COMPONENT.PrintName = "2019 Chevrolet Tahoe"

COMPONENT.IsVirtual = true

COMPONENT.Templates = {
	["Mesh"] = {
		Mesh_static = {
			Model = "models/supermighty/mesh/tahoe_lights.mdl",
			IntensityGainFactor = 10,
			IntensityLossFactor = 10,
            Scale = 1.0,
		},
        Mesh_drl = {
			Model = "models/supermighty/mesh/tahoe_drl.mdl",
			IntensityGainFactor = 10,
			IntensityLossFactor = 10,
            Scale = 1.0,
		},
    },
    ["2D"] = {
		Running = {
			Width = 1,
			Height = 1,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/bulb_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/bulb_shape.png").MaterialName,
			Scale = 0.2
		}
	},
    ["Projected"] = {
		Projected = {
			FOV = 70,
			Texture = "effects/flashlight/soft",
			NearZ = 4,
			FarZ = 2000,
			Brightness = 3,
			IntensityGainFactor = 12,
			IntensityLossFactor = 6,
			DeactivationState = "OFF",
		},
	},
    ["DynamicLight"] = {
		Dynamic = {
			Brightness = 1,
			Size = 30,
			InnerAngle = 0,
			OuterAngle = 0,
		}
	},
}
COMPONENT.ElementStates = {
    ["Mesh"] = {
        ["~OFF"] = { Intensity = 0, IntensityTransitions = false },
        ["~OFF2"] = { Intensity = 0, IntensityTransitions = true },
		["BL"] = {
			Inherit = "B",
			Intensity = 10000
		},
		["~SW"] = {
			Inherit = "SW",
			Intensity = 0.9,
            IntensityLoss = 60,
			IntensityTransitions = true,
		},
        ["~R"] = {
            BloomColor = PhotonColor( 255, 60, 0 ):Blend( red ):GetBlendColor(),
		    DrawColor = PhotonColor( 255, 60, 0 ):Blend( red ):GetBlendColor(),
            Inherit = "R",
            Intensity = 1,
            IntensityLoss = 100,
            IntensityTransitions = true,
        },
    },
    ["Projected"] = {
        ["~OFF"] = { Intensity = 0, IntensityTransitions = false },
        ["~OFF2"] = { Intensity = 0, IntensityTransitions = true },
		["~SW"] = {
			Inherit = "SW",
			Intensity = 1,
            IntensityLoss = 60,
			IntensityTransitions = true,
		},
        ["~SW2"] = {
			Inherit = "R",
			Intensity = 1,
            IntensityLoss = 1,
			IntensityTransitions = true,
		},
    },
}
COMPONENT.Elements = {
    [1] = { "Mesh_static", Vector( 0, -0.1, 0 ), Angle( 0, 0, 0 ), "mighters/mesh/9", DrawMaterial = "sentry/19tahoe/tail_on", BloomMaterial = "sentry/19tahoe/tail_on", },
    [2] = { "Mesh_static", Vector( 0, -0.1, 0 ), Angle( 0, 0, 0 ), "mighters/mesh/10", DrawMaterial = "sentry/19tahoe/tail_on", BloomMaterial = "sentry/19tahoe/tail_on", },
    [3] = { "Mesh_static", Vector( 0, -0.1, 0 ), Angle( 0, 0, 0 ), "mighters/mesh/13", DrawMaterial = "photon/common/glow_gradient_a", },
    [4] = { "Mesh_static", Vector( 0, -0.1, 0 ), Angle( 0, 0, 0 ), "mighters/mesh/14", DrawMaterial = "photon/common/glow_gradient_a", },
    [5] = { "Mesh_static", Vector( -105.3,  -86.6, 0 ), Angle( 90, 90, 0 ), "mighters/mesh/12", DrawMaterial = "photon/common/glow_gradient_a", BoneParent = "trunk" },
    [6] = { "Mesh_static", Vector( 0, -0.1, 0 ), Angle( 0, 0, 0 ), "mighters/mesh/17", DrawMaterial = "photon/common/glow_gradient_a", },
    [7] = { "Mesh_static", Vector( 0, -0.1, 0 ), Angle( 0, 0, 0 ), "mighters/mesh/18", DrawMaterial = "photon/common/glow_gradient_a", },
    [8] = { "Mesh_static", Vector( 0, -0.1, 0 ), Angle( 0, 0, 0 ), "mighters/mesh/15", DrawMaterial = "photon/common/glow_gradient_a", },
    [9] = { "Mesh_static", Vector( 0, -0.1, 0 ), Angle( 0, 0, 0 ), "mighters/mesh/16", DrawMaterial = "photon/common/glow_gradient_a", },

    [10] = { "Mesh_static", Vector( 0, 0.1, 0 ), Angle( 0, 0, 0 ), "mighters/mesh/1", DrawMaterial = "photon/common/gl_red", },
    [11] = { "Mesh_static", Vector( 0, 0.1, 0 ), Angle( 0, 0, 0 ), "mighters/mesh/2", DrawMaterial = "photon/common/gl_red", },
    [12] = { "Mesh_static", Vector( 0, 0.1, 0 ), Angle( 0, 0, 0 ), "mighters/mesh/5", DrawMaterial = "photon/common/gl_red", },
    [13] = { "Mesh_static", Vector( 0, 0.1, 0 ), Angle( 0, 0, 0 ), "mighters/mesh/6", DrawMaterial = "photon/common/gl_red", },

    [14] = { "Mesh_drl", Vector( 0, 0.1, 0 ), Angle( 0, 0, 0 ), "mighters/mesh/drl", DrawMaterial = "photon/common/glow_gradient_a", BloomMaterial = "photon/common/glow_gradient_a" },

    [15] = { "Mesh_static", Vector( 0, 0.1, 0.01 ), Angle( 0, 0, 0 ), "mighters/mesh/3", DrawMaterial = "photon/common/gl_red", },
    [16] = { "Mesh_static", Vector( 0, 0.1, 0.01 ), Angle( 0, 0, 0 ), "mighters/mesh/4", DrawMaterial = "photon/common/gl_red", },
    [17] = { "Projected", Vector( -34, 50, 41 ), Angle( 0, 0, 0 ),},
    [18] = { "Projected", Vector( 34, 50, 41 ), Angle( 0, 0, 0 ), },

    [19] = { "Mesh_static", Vector( -105.3,  -86.6, 0 ), Angle( 90, 90, 0 ), "mighters/mesh/8", DrawMaterial = "photon/common/glow_gradient_a", BoneParent = "trunk" },
    [20] = { "Mesh_static", Vector( -105.3,  -86.6, 0 ), Angle( 90, 90, 0 ), "mighters/mesh/7", DrawMaterial = "photon/common/glow_gradient_a", BoneParent = "trunk" },
    [21] = { "Dynamic", Vector( 19.55, -34.7, 7.9 ), Angle( 0, 0, 0 ), BoneParent = "trunk" },
    [22] = { "Dynamic", Vector( 19.55, -34.7, -7.9 ), Angle( 0, 0, 0 ), BoneParent = "trunk" },

}

COMPONENT.StateMap = "[~R] 1 2 [R] 3 4 5 6 7 [SW] 8 9 12 13 [A] 10 11 [W] 14 [~SW] 15 16 17 18 19 20 [SW] 21 22"
 
local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
    ["Tail_Right"] = {
        Frames = {
            [1] = "1",
        },
        Sequences = {
            ON = {
                1
            },
        }
    },
    ["Tail_Left"] = {
        Frames = {
            [1] = "2",
        },
        Sequences = {
            ON = {
                1
            },
        }
    },
    ["Brake_Left"] = {
        Frames = {
            [1] = "3",
        },
        Sequences = {
            ON = {
                1
            },
        }
    },
    ["Brake_Right"] = {
        Frames = {
            [1] = "4",
        },
        Sequences = {
            ON = {
                1
            },
        }
    },
    ["Brake_Centre"] = {
        Frames = {
            [1] = "5",
        },
        Sequences = {
            ON = {
                1
            },
        }
    },
    ["Signal_Rear_Left"] = {
        Frames = {
            [1] = "6",
        },
        Sequences = {
            ON =  sequence():Alternate( 1, 0, 10 ),
        }
    },
    ["Signal_Rear_Right"] = {
        Frames = {
            [1] = "7",
        },
        Sequences = {
            ON = sequence():Alternate( 1, 0, 10 ),
        }
    },
    ["Reverse_Left"] = {
        Frames = {
            [1] = "8",
        },
        Sequences = {
            ON = {
                1
            },
        }
    },
    ["Reverse_Right"] = {
        Frames = {
            [1] = "9",
        },
        Sequences = {
            ON = {
                1
            },
        }
    },
    ["Signal_Front_Left"] = {
        Frames = {
            [1] = "10",
        },
        Sequences = {
            ON =  sequence():Alternate( 1, 0, 10 ),
        }
    },
    ["Signal_Front_Right"] = {
        Frames = {
            [1] = "11",
        },
        Sequences = {
            ON =  sequence():Alternate( 1, 0, 10 ),
        }
    },
    ["Low_Beam_Left"] = {
        Frames = {
            [1] = "12",
        },
        Sequences = {
            ON = {
                1
            },
        }
    },
    ["Low_Beam_Right"] = {
        Frames = {
            [1] = "13",
        },
        Sequences = {
            ON = {
                1
            },
        }
    },
    ["DRL"] = {
        Frames = {
            [1] = "14",
        },
        Sequences = {
            ON = {
                1
            },
        }
    },
    ["Flash"] = {
       -- FrameDuration = .08,
        Frames = {
            [0] = "[~OFF2] 15 16 17 18",
            [1] = "[~SW] 15 17 [~OFF2] 16 18",
            [2] = "[~OFF2] 15 17 [~SW] 16 18",
        },
        Sequences = {
            ON =  sequence():Alternate( 1, 2, 6 ),
         --  ON =  sequence():DoubleFlash( 1, 0):Hold(1):DoubleFlash( 2, 0):Hold(1),
        }
    },
    ["RearFlash"] = {
        -- FrameDuration = .08,
         Frames = {
             [0] = "[~OFF2] ",
             [1] = "[~R] 3 4 6 7 [~OFF2] 8 9",
             [2] = "[~OFF2] 3 4  6 7 [~SW] 8 9",
         },
         Sequences = {
             ON = sequence():Alternate( 1, 2, 4 ),
          --  ON =  sequence():DoubleFlash( 1, 0):Hold(1):DoubleFlash( 2, 0):Hold(1),
         }
     },
     ["PlateLights"] = {
        Frames = {
            [1] = "19 20 21 22" --"19 20 21",
        },
        Sequences = {
            ON = {
                1
            },
        }
    },
}

COMPONENT.Inputs = {
   ["Vehicle.Lights"] = {
       ["PARKING"] = {
        Tail_Right = "ON",
        Tail_Left = "ON",
        PlateLights = "ON",
       },
       ["HEADLIGHTS"] = {
        Tail_Right = "ON",
        Tail_Left = "ON",
        Low_Beam_Left = "ON",
        Low_Beam_Right = "ON",
        PlateLights = "ON",
      -- DRL = "ON", --kinda wank so i dont like it 
       },
       ["DRL"] = {
        DRL = "ON"
    }
   },
   ["Vehicle.Brake"] = {
    ["BRAKE"] = {
        Brake_Left = "ON",
        Brake_Right = "ON",
        Brake_Centre = "ON",
        },
    },
    ["Vehicle.Signal"] = {
        ["LEFT"] = {
        Signal_Rear_Left = "ON",
        Signal_Front_Left = "ON",
        },
        ["RIGHT"] = {
            Signal_Rear_Right = "ON",
            Signal_Front_Right = "ON",
        },
        ["HAZARD"] = {
            Signal_Rear_Left = "ON",
            Signal_Rear_Right = "ON",
            Signal_Front_Left = "ON",
            Signal_Front_Right = "ON",
        },
    },
    ["Vehicle.Transmission"] = {
        ["REVERSE"] = {
            Reverse_Left = "ON",
            Reverse_Right = "ON",
        }
    },
    ["Emergency.Warning"] = {
        ["MODE3"] = {
            Flash = "ON",
            RearFlash = "ON",
        }
    },
}
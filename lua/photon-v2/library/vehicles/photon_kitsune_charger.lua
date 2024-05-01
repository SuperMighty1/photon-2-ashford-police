if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "Kitsune Charger"
VEHICLE.Vehicle		= "15charger_fm2_sgm"
VEHICLE.Category 	= "Photon 2: Kitsune County"
VEHICLE.Author		= "SuperMighty"

VEHICLE.SubMaterials = {
	
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
					}
				}
			}
		},
    },
    {
		Catezgory = "Body",
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
}
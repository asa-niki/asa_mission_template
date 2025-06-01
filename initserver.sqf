["ACRE_PRC152", "default", "example1"] call acre_api_fnc_copyPreset;

["ACRE_PRC152", "default", 1, "description", "BtlNet"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 2, "description", "PLTNET 2"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 3, "description", "PLTNET 3"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 4, "description", "COY"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 5, "description", "CAS"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC152", "default", 6, "description", "FIRES"] call acre_api_fnc_setPresetChannelField;

[west, -1, [ // west = BLUFOR, east = OPFOR, independent = GRENFOR

	["RoadCone_L_F",-2],
	["PortableHelipadLight_01_red_F",-2],
	
	["RoadBarrier_F",0],
	["Land_PortableLight_double_F",0],
	["Land_Plank_01_4m_F",0],

	["Land_Razorwire_F",1],
	["Land_Plank_01_8m_F",1],
	
	["Land_CzechHedgehog_01_new_F",2],
	["Land_CncBarrier_stripes_F",2],
	
	["Land_SandbagBarricade_01_half_F",3],
	
	["Land_SandbagBarricade_01_F",4],
	["Land_SandbagBarricade_01_hole_F",4],
	["Land_BarGate_F",4],
	
	//Woodland Specific
	["Land_BagFence_Long_F",4],
	["Land_BagFence_Round_F",4],
	
	["Land_BagBunker_Small_F",15],
	
	["PortableHelipadLight_01_red_F",5],
	["CamoNet_wdl_big_F",5],
	["CamoNet_wdl_open_F",5],
	["CamoNet_wdl_F",5],

	["Land_HBarrier_3_F", 1],
	["Land_HBarrier_5_F", 1],
	["Land_HBarrier_1_F", 1],
	["Land_HBarrier_Big_F", 1],
	["Land_HBarrierWall_corridor_F", 1],
	["Land_HBarrierWall_corner_F", 1],
	["Land_HBarrierWall4_F", 1],
	["Land_HBarrierWall6_F", 1],
	["Land_HBarrierTower_F", 1]
	]] call acex_fortify_fnc_registerObjects;
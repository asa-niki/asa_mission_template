1 enableChannel [true, false];
arsenal_area_activation = true;
publicVariable "arsenal_area_activation";

missionNamespace setvariable ["SPLogLevel", 3];
profileNamespace setvariable ["SPSavelocation", 1];

if (isNil "arsenalarea_activation") then {
	arsenalarea_activation = "VR_3DSelector_01_incomplete_F" createVehicle [-10, -10, 0];
	publicVariable "arsenalarea_activation";
	arsenalarea_activation allowDamage false;
};
if (isNil "dumpArsenal") then {
	dumpArsenal = "Land_PaperBox_closed_F" createVehicle [0, 0, 0];
	publicVariable "dumpArsenal";
	dumpArsenal allowDamage false;
	dumpArsenal enableSimulation false;
};
if (isNil "arsenalBox") then {
	arsenalBox = "asa_Arsenal_GER_F" createVehicle [0, 0, 0];
	publicVariable "arsenalBox";
	arsenalBox allowDamage false;
	arsenalBox enableSimulation false;
};


/*
ACEX Fortify 
Bauzeit ist von den Kosten abhänig.

Um Seite des Fortify Tools Nachfolgend zu wechseln, 
muss west mit east ersetzt werden. 
*/

[west, -1, [

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


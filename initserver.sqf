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



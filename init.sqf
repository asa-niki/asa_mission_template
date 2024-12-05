// Arsenal Script Deaktivieren

arsenalarea_activation = "VR_3DSelector_01_incomplete_F" createVehicle [-10, -10, 0];
arsenalarea_activation allowDamage false;

arsenal_area_activation = true;
publicVariable "arsenal_area_activation";

arsenalarea_activation addAction["Arsenalscript deaktivieren", {
	arsenal_area_activation = false;
	publicVariable "arsenal_area_activation";
}, [], 1.5, true, false, "", "true", 5];

arsenalarea_activation addAction["Arsenalscript aktivieren", {
	arsenal_area_activation = true;
	publicVariable "arsenal_area_activation";
	[] execVM "Gattungsscript\areaScript.sqf";
}, [], 1.5, true, false, "", "true", 5];

if (isNil "dumpArsenal") then {
	dumpArsenal = "Land_PaperBox_closed_F" createVehicle [0, 0, 0];
	dumpArsenal allowDamage false;
	dumpArsenal enableSimulation false;
};
if (isNil "arsenalBox") then {
	arsenalBox = "asa_Arsenal_GER_F" createVehicle [0, 0, 0];
	arsenalBox allowDamage false;
	arsenalBox enableSimulation false;
};

[] execVM "Gattungsscript\scriptStart.sqf";